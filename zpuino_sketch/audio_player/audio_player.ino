/*
  Sketch to read a .wav from an SD card, parse the PCM values and drive an output using a delta-sigma DAC.
  
  Requires a system with a ZPUino softcore processor with SPI, Delta-Sigma DAC, and timer control (such as the Hyperion variant
  http://papilio.gadgetfactory.net/index.php?n=Papilio.Hyperion).
  
  For all the ZPU reg names see http://www.alvie.com/zpuino/downloads/zpuino-1.0.pdf
 */
 
#include <SD.h>

//SD sard pin definitions 
#define CSPIN  WING_A_4
#define SDIPIN WING_A_3
#define SCKPIN WING_A_2
#define SDOPIN WING_A_1

//Sigma-delta ADC pin definitions
#define SDCH0  WING_C_0

File myFile;

/* Interrupt handler:
 * Processes a single PCM smaple from the wav file
 */
void _zpu_interrupt ()
{
  if ( TMR0CTL & _BV(TCTLIF))
  {
     if (myFile&&myFile.available()) {
      //Process sample
      unsigned char sample = myFile.read();
      SIGMADELTADATA = sample<<7;
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
 * to provide an acurate 8 kHz sample processing interrupt
 */
void init_interrupts()
{
  // Clear timer counter.
  TMR0CNT = 0;
 
  // Timer frequency = 8000
  unsigned frequency = 8000;
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
  
  init_dac();
  
  if(init_sd()){
      // Open the file for reading:
      myFile = SD.open("track.wav");
  
     // Waste first 80 bytes (header data - not interested during initial testing)
     if (myFile) {
      for(int i=0;i<80;i++)
        myFile.read();
   }
  }
  
  init_interrupts();
}

void loop()
{
}
