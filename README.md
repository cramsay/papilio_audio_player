papilio_audio_player
====================

A wav audio player system-on-a-chip using a Papilio one board and ZPUino core.

## Configuration / Installation
As it stands the external hardware is simply a micro-SD card using SPI and a single speaker channel. Papilio pins are :
* **A1** - SD MISO
* **A2** - SD SCK
* **A3** - SD MOSI
* **A4** - SD CS
* **C0** - Speaker signal

This system uses a [custom zpuino core](https://github.com/cramsay/papilio_audio_player/blob/master/bitfiles/zpuino_papilio_one_500k_custom.bit) with a FIFO buffered DAC.
If you're not familiar with the ZPUino/Papilio process, you need to use the papilio-loader to get the zpuino core bitfile into **SPI flash** (it will _not_ work if sent straight to the FPGA) then use the ZAP IDE to "upload" the sketch. 
The sketch can be found at [/zpuino_sketch/audio_player/audio_player.ino](https://github.com/cramsay/papilio_audio_player/blob/master/zpuino_sketch/audio_player/audio_player.ino)

![Breadboard shot to make readme more readable...](http://cramsay.co.uk/blog/wp-content/uploads/2014/05/P1000470.jpg)

### Building the custom ZPUino core
You don't _have_ to do this - the bitfile for the 500k board is in the bitfiles folder.
However, it isn't too hard to do so. Just run the makefile in the zpuino-hdl directory
"...boards/papilio_one/s3e500" to generate the bitfile. You can even just type "make flash"
to flash the bitfile to your board straight away (if you have papilio-progs installed).

## Details of the custom ZPUino core
There is one custom wishbone-compatible peripheral - a buffered DAC. Data from the SD card is pushed to the buffer
using a small C program. The core has HDL level settings for the DAC which are exposed 
through the DAC_CTRL register. These include sample rate, sample width (8 or 16 bits), sample endian-ness
and a flag for signed (2's complement) samples. The register is structured like so (bit numbers are in brackets)...  
|(31) sample_timer (16)|(15) N/A (5)| signed (4)| endian (3)| width (2)| empty (1)| full (0)|

 * **sample_time**
   * 16 bits - sets how many clock cycles are elapsed before switching to the next sample (determines sample rate)
 * **N/A**
   * Completely useless. Doesn't control anything as of yet.
 * **signed**
   * 1 bit - 0=samples are unsigned, 1=samples are signed using 2's copmlement
 * **endian**
   * 1 bit - 0=samples are little endian, 1=samples are big endian
 * **width**
   * 1 bit - 0=samples are 8 bits wide, 1=samples are 16 bits wide
 * **empty**
   * 1 bit (read only) - 1 when sample buffer is empty
 * **full**
   * 1 bit (read only) - 1 when sample buffer is full 

## Troubleshooting
### SD.h library uses lots of space!
When I was first testing this (using a different soft processor), I was running very tight (99% of sketch space used!) on space.
We can disable SD card write functionality and save around 2KB of
code space. Do this by removing the line "#define SD_WRITE_SUPPORT" from
zap/hardware/zpuino/zpu/cores/zpuino/board_papilio_one.h . If process changes you can
probably find it at http://papilio.cc/index.php?n=Papilio.SD.

### Can't recompile the ZPUino core!
It should be done (on linux) by running the make file in the zpuino_hdl dir.
One major pitfall is when the build fails almost immediately with something like
"zpu-elf-g++ : command not found". This is referencing the gcc compiler for our ZPU sketches
and it can't find it anywhere! For me, I had just downloaded the ZAP IDE and was happy enough
to run it out of my downloads folder but for the makefile to work you _must_ add the ZAP IDE's
hardware/tools/zpu/bin to your path variable. E.g.
```export PATH=$PATH:/some/path/to/papilio-zap-ide/hardware/tools/zpu/bin```

Then try a "make clean" and "make" :)
