/*
  Sketch to read a .wav from an SD card, parse the PCM values and drive an output using a delta-sigma DAC.
  
  Requires a system with a ZPUino softcore processor with SPI, Delta-Sigma DAC, and timer control - the vanilla variant
  should suffice. Might want to check SD card functionality using SD.h examples before running this.
  The hyperion variant works well but sketch space is limited on the Papilio one 500k.
  
  For all the ZPU reg names see http://www.alvie.com/zpuino/downloads/zpuino-1.0.pdf
 */
 
#include <SD.h>
#include <QueueArray.h> //Remember to add library through IDE (Sketch->Import Library->Add Library then add libs/QueueArray)

//SD sard pin definitions 
#define CSPIN  WING_A_4
#define SDIPIN WING_A_3
#define SCKPIN WING_A_2
#define SDOPIN WING_A_1

//Sigma-delta ADC pin definitions
#define SDCH0  WING_C_0

//Define sample frequency of wav file (read this from metadata eventually...)
#define SMPL_FREQ 32000
//Number of samples to hold in buffer
#define SMPL_BUF 360

File myFile;
QueueArray<unsigned char> samples;

/* Interrupt handler:
 * Processes a single PCM smaple from the wav file
 */
void _zpu_interrupt ()
{
  if ( TMR0CTL & _BV(TCTLIF))
  {
     if (!samples.isEmpty()) {
      //Process sample
      SIGMADELTADATA = samples.dequeue()<<8;
    }
    
    /* Clear the interrupt flag on timer register */
    TMR0CTL &= ~_BV(TCTLIF);
  }
}

// Setup for sigma-delta DAC (wishbone peripheral)
void init_dac()
{
  // Configure pin as output
   pinMode (SDCH0 , OUTPUT );
   // enable PPS on this pin
   pinModePPS (SDCH0 , HIGH );
   // Map SigmaDelta channel 1 to pin 30
   outputPinForFunction (SDCH0 , IOPIN_SIGMADELTA0 );
   //Enable only channel 0
   SIGMADELTACTL = 0x01;
}

/* Setup for SD card using SPI (See SD.h examples)
 * Returns 0 on failure and 1 on success. 
 */
int init_sd()
{
  
  USPICTL=BIT(SPICP1)|BIT(SPICPOL)|BIT(SPISRE)|BIT(SPIEN)|BIT(SPIBLOCK);
  outputPinForFunction( SDIPIN, IOPIN_USPI_MOSI );
  pinModePPS(SDIPIN,HIGH);
  pinMode(SDIPIN,OUTPUT);

  outputPinForFunction( SCKPIN, IOPIN_USPI_SCK);
  pinModePPS(SCKPIN,HIGH);
  pinMode(SCKPIN,OUTPUT);

  pinModePPS(CSPIN,LOW);
  pinMode(CSPIN,OUTPUT);

  inputPinForFunction( SDOPIN, IOPIN_USPI_MISO );
  pinMode(SDOPIN,INPUT); 

  //Try to initialize the SD card
  Serial.print("Initializing SD card...");
   
  if (!SD.begin(CSPIN)) {
    Serial.println("initialization failed!");
    return 0;
  }
  Serial.println("initialization done.");
   return 1;
}

/* Initializes the ZPU interrupt registers
 * to provide an acurate 11 kHz sample processing interrupt
 */
void init_interrupts()
{
  // Clear timer counter.
  TMR0CNT = 0;
 
  // Set timer frequency
  unsigned frequency = SMPL_FREQ;
  TMR0CMP = ( (CLK_FREQ) / frequency ) - 1;
  TMR0CTL = _BV(TCTLENA)| _BV(TCTLCCM)| _BV(TCTLDIR)| _BV(TCTLIEN);
 
  // Enable timer 0 interrupt then globally enable interrupts
  INTRMASK = _BV(INTRLINE_TIMER0);
  INTRCTL = 1;
}

void setup()
{
 // Open serial communications and wait for port to open:
  Serial.begin(9600);
  delay(2000);
  init_dac();
  
  if(init_sd()){
      // Open the file for reading:
      myFile = SD.open("track.wav");
  
     // Waste first 80 bytes (header data - not interested during initial testing)
     if (myFile) {
      for(int i=0;i<120;i++)
        myFile.read();
   }
   
   //Fill buffer before starting interrupts
    while(samples.count()<SMPL_BUF&&myFile.available())
        samples.enqueue(myFile.read());
  }
  
  init_interrupts();
}

void loop()
{
  //Keep sample buffer as full as possible
  if(samples.count()<SMPL_BUF)
    if(myFile&&myFile.available())
      samples.enqueue(myFile.read());
}

