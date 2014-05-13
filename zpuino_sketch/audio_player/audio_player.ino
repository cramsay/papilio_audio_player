/*
  Sketch to read a .wav from an SD card, parse the PCM values and drive an output using a delta-sigma DAC.
  
  Requires a system a custom ZPUino variant (included in the git repo)
  
  For all the ZPU reg names see http://www.alvie.com/zpuino/downloads/zpuino-1.0.pdf
  
  # Note about SD card reads and buffering:
  ----------------------------------------
  Initially I was aiming to perform all the buffering just infront of the DAC (in VHDL)
  but then I learned that the SD card reads are performed in 512 byte blocks. So there is also
  a 512 byte buffer in software as the data must be sent to the hardware in 32-bit words (max.)
  using ZPUino. So, I talk about bufferring in the code, it could be the harware FIFO buffer *or*
  the uint8_t array! Watch out.
  
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
#define DAC_PIN_EMPTY  WING_C_1
#define DAC_PIN_FULL  WING_C_2
#define DAC_PPS_NUM 7
#define DAC_PPS_EMPTY 8
#define DAC_PPS_FULL 9
#define DAC_B 8
#define DAC_DATA REGISTER(IO_SLOT(DAC_B),0)
#define DAC_CTRL REGISTER(IO_SLOT(DAC_B),1)

//DAC control options
#define DAC_OP_isFULL 0x1
#define DAC_OP_isEMPTY 0x2
#define DAC_OP_is16W 0x4
#define DAC_OP_isBIGEND 0x8
#define DAC_OP_isSIGNED 0x10

#define DAC_FULL (DAC_CTRL & DAC_OP_isFULL)
#define DAC_EMPTY (DAC_CTRL & DAC_OP_isEMPTY) 

File sdFile;

//Audio file definitions
uint32_t sample_freq;
uint16_t channels;
uint16_t sample_width;
char wav_file[512] = "red.wav";

//SD card buffer
uint8_t samples[512]; // Actual buffered data
int s_count=0;        // # bytes in buffer
int s_index=0;        // # current index in buffer

// Setup for sigma-delta DAC (wishbone peripheral)
void init_dac()
{
   //Set up PPS for DAC peripheral
   pinMode (DAC_CH0 , OUTPUT );
   pinModePPS (DAC_CH0 , HIGH );
   outputPinForFunction (DAC_CH0 , DAC_PPS_NUM);
   
   //Debugging buffer full/empty LEDS
   #ifdef DEBUG
     pinMode (DAC_PIN_EMPTY , OUTPUT );
     pinModePPS (DAC_PIN_EMPTY , HIGH );
     outputPinForFunction (DAC_PIN_EMPTY , DAC_PPS_EMPTY);
     pinMode (DAC_PIN_FULL , OUTPUT );
     pinModePPS (DAC_PIN_FULL , HIGH );
     outputPinForFunction (DAC_PIN_FULL , DAC_PPS_FULL);
   #endif
   
   //Set sample frequency of the DAC
   unsigned frequency = sample_freq;
   uint32_t ctrl_reg =( ( (CLK_FREQ) / frequency ) - 1 )<<16; // Define frequency
   if(sample_width==16)
     ctrl_reg |= DAC_OP_is16W | DAC_OP_isSIGNED; // Define 16 bit sample options
   else if(sample_width==8)
     ctrl_reg |= DAC_OP_isBIGEND;
   
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

/* Recurse through filesystem and call play()
 * on all wav files.
 */
void playAll(File dir) {
   while(true) {
     
     File entry =  dir.openNextFile();
     if (! entry) {
       // no more files
       Serial.println("No more files.");
       break;
     }
     if (entry.isDirectory()) {
       playAll(entry);
     } else {
       Serial.print(entry.name());
       play(entry);
     }
     entry.close();
   }
}

/* Play though an entire wav file
 */
void play(File file){
   if (file) {
     Serial.println("Opened file OK");
      
      //Read file header
      s_count=file.read((void*)samples,512);
      s_index=44; //Set offset to start of actual data so we don't play
      
      channels=samples[22]|(samples[23]<<8);
      sample_width=samples[34]|(samples[35]<<8);
      sample_freq=samples[24]|(samples[25]<<8)|(samples[26]<<16)|(samples[27]<<24);
      
      Serial.print("Channels : ");
      Serial.println(channels);
      Serial.print("Bits per sample :");
      Serial.println(sample_width);
      Serial.print("Sample freq : ");
      Serial.println(sample_freq);       
      
      //Do format checks
      int supported_fmt=1;
      if(sample_width!=8 && sample_width!=16){
        Serial.println("Unsupported sample width");
        supported_fmt=0;
      } else if(sample_freq>44100){
        Serial.println("Too high a sample rate");
        supported_fmt=0;
      } else if(channels>2){
        Serial.println("Too many channels");
        supported_fmt=0;
      } 
      //Quit if not supported
      if (!supported_fmt)
        return;
      
      // Setup DAC & buffer with bits per sample, sample frequency, etc.
      init_dac();
      
      //Read through the whole file
      while(file.available()){
        uint32_t sample;
         
       //While buffer isn't full, pass another sample
        while(!DAC_FULL){
        
          //Read more samples if needed
          if(s_index>=s_count){
            s_count=file.read(samples,512); // # Bytes to read is a trade-off between # reads and time for each read - to keep buffer happy.
            s_index=0;
          }
          
          //Warn about empty buffer ocurrences!
          #ifdef DEBUG
          if(DAC_EMPTY)
            Serial.println("Buffer emptied! Expected upon cold start");
          #endif
          
          sample=0;
          for(int start_i=s_index;s_index<start_i+((sample_width*channels)>>3); s_index++)   
            sample =  sample<<8 | samples[s_index];
          DAC_DATA = sample;
        }
      }
      
   } else
     Serial.println("Error opening file.");
}

void setup()
{
 // Open serial communications and wait for port to open:
  Serial.begin(9600);
  delay(2000);
  
  if(init_sd()){
      // Open the file for reading:
      sdFile = SD.open("/");
      playAll(sdFile);

  }
 
  init_dac();

}

void loop()
{
  
}

