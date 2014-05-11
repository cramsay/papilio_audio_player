/*
  Sketch to read a .wav from an SD card, parse the PCM values and drive an output using a delta-sigma DAC.
  
  Requires a system a custom ZPUino variant (included in the git repo)
  
  For all the ZPU reg names see http://www.alvie.com/zpuino/downloads/zpuino-1.0.pdf
 */
 
#include <SD.h>

#define DEBUG

//SD sard pin definitions 
#define CSPIN  WING_A_4
#define SDIPIN WING_A_3
#define SCKPIN WING_A_2
#define SDOPIN WING_A_1

//Sigma-delta DAC pins, PPS and register definitions
#define DAC_CH0  WING_C_0
#define DAC_EMPTY  WING_C_1
#define DAC_FULL  WING_C_2
#define DAC_PPS_NUM 7
#define DAC_PPS_EMPTY 8
#define DAC_PPS_FULL 9
#define DAC_B 8
#define DAC_DATA REGISTER(IO_SLOT(DAC_B),0)
#define DAC_CTRL REGISTER(IO_SLOT(DAC_B),1)

//DAC control options
#define DAC_OP_isFULL 0x1
#define DAC_OP_is16W 0x2
#define DAC_OP_isBIGEND 0x4
#define DAC_OP_isSIGNED 0x8

File sdFile;

//Audio file definitions
unsigned int sample_freq = 44100;
char wav_file[512] = "t1644.wav";
int sample_is16bit = 1;

/* Interrupt handler:
 * Called when the HDL audio buffer drops below 50% full
 */
void _zpu_interrupt ()
{
   int16_t sample;
   
   //While buffer isn't full, pass another sample
    while(!(DAC_CTRL&1)){
      
      /*Doing this over a simpler sdFile.read() allows for a single call
        to fetch all of the sample at once and the rest of the processing
        is done in hardware (configured using the DAC_CTRL register) */     
      if(sample_is16bit)
        sdFile.read((void *)&sample,2);
      else
        sdFile.read((void *)&sample,1);
      DAC_DATA = sample; 
    }
}

// Setup for sigma-delta DAC (wishbone peripheral)
void init_dac()
{
   //Set up PPS for DAC peripheral
   pinMode (DAC_CH0 , OUTPUT );
   pinModePPS (DAC_CH0 , HIGH );
   outputPinForFunction (DAC_CH0 , DAC_PPS_NUM);
   
   //Debugging buffer full/empty LEDS
   #ifdef DEBUG
     pinMode (DAC_EMPTY , OUTPUT );
     pinModePPS (DAC_EMPTY , HIGH );
     outputPinForFunction (DAC_EMPTY , DAC_PPS_EMPTY);
     pinMode (DAC_FULL , OUTPUT );
     pinModePPS (DAC_FULL , HIGH );
     outputPinForFunction (DAC_FULL , DAC_PPS_FULL);
   #endif
   
   //Set sample frequency of the DAC
   unsigned frequency = sample_freq;
   uint32_t ctrl_reg =( ( (CLK_FREQ) / frequency ) - 1 )<<16; // Define frequency
   if(sample_is16bit)
     ctrl_reg |= DAC_OP_is16W | DAC_OP_isSIGNED; // Define 16 bit sample options
   
   DAC_CTRL = ctrl_reg; // Push DAC control options to register
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

// Initializes the ZPU interrupt registers
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
  
  if(init_sd()){
      // Open the file for reading:
      sdFile = SD.open(wav_file);
  
     if (sdFile) {
       Serial.println("Opened file OK");
        
        // Waste first 80 bytes (header data - not interested during initial testing)
        for(int i=0;i<80;i++)
          sdFile.read();
       
       //Fill the buffer before we start 
       _zpu_interrupt();
       Serial.println("Finished pre-filling buffer");
     } else
       Serial.println("Error opening file.");
  }
  
  /* Init buffered DAC peripheral
     This is done after reading wav file header as encoding types effect options sent with
     dac init */
  init_dac();
  //Enable interrupts and start playing.
  init_interrupts();
}

void loop()
{
}

