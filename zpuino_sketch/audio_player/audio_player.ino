/*
  Sketch to read a .wav from an SD card, parse the PCM values and drive an output using a delta-sigma DAC.
  
  Requires a system a custom ZPUino variant (included in the git repo)
  
  For all the ZPU reg names see http://www.alvie.com/zpuino/downloads/zpuino-1.0.pdf
 */
 
#include <SD.h>

//SD sard pin definitions 
#define CSPIN  WING_A_4
#define SDIPIN WING_A_3
#define SCKPIN WING_A_2
#define SDOPIN WING_A_1

//Sigma-delta DAC pins, PPS and register definitions
#define SDCH0  WING_C_0
#define DAC_PPS_NUM 7
#define DAC_B 8
#define DAC_DATA REGISTER(IO_SLOT(DAC_B),0)
#define DAC_CTRL REGISTER(IO_SLOT(DAC_B),1)

//Define sample frequency of wav file (read this from metadata eventually...)
#define SMPL_FREQ 44100
//Name (and path) of wav file
#define TRACK_NAME "track44r.wav"

File sdFile;

/* Interrupt handler:
 * Called by the HDL audio buffer drops below 50% full
 */
void _zpu_interrupt ()
{
   //While buffer isn't full, pass another sample
    while(!DAC_CTRL)
      DAC_DATA = sdFile.read();
}

// Setup for sigma-delta DAC (wishbone peripheral)
void init_dac()
{
   //Set up PPS for DAC peripheral
   pinMode (SDCH0 , OUTPUT );
   pinModePPS (SDCH0 , HIGH );
   outputPinForFunction (SDCH0 , DAC_PPS_NUM);
   
   //Set sample frequency of the DAC
   unsigned frequency = SMPL_FREQ;
   DAC_CTRL = ( (CLK_FREQ) / frequency ) - 1; // Set to sampling frequency
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
 * to provide an acurate PCM request interrupt
 */
void init_interrupts()
{
  // Enable buffered dac's interrupt then globally enable interrupts
  INTRMASK = _BV(DAC_B);
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
      sdFile = SD.open(TRACK_NAME);
  
     if (sdFile) {
       Serial.println("Opened file fine");
        
        // Waste first 80 bytes (header data - not interested during initial testing)
        for(int i=0;i<80;i++)
          sdFile.read();
       
       //Fill the buffer before we start 
       _zpu_interrupt();
       Serial.println("Done pre-filling");
     }
  }
  
  //Enable interrupts and start playing.
  init_interrupts();
}

void loop()
{
}

