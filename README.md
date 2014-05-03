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

This system uses a [custom zpuino core](https://github.com/cramsay/papilio_audio_player/blob/master/bitfiles/zpuino_papilio_one_500k_custom.bit) with a FIFO buffered DAC (eventually).
If you're not familiar with the ZPUino/Papilio process, you need to use the papilio-loader to get the zpuino core bitfile into **SPI flash** (it will _not_ work if sent straight to the FPGA) then use the ZAP IDE to "upload" the sketch. 
The sketch can be found at [/zpuino_sketch/audio_player/audio_player.ino](https://github.com/cramsay/papilio_audio_player/blob/master/zpuino_sketch/audio_player/audio_player.ino)

![Breadboard shot to make readme more readable...](http://cramsay.co.uk/blog/wp-content/uploads/2014/05/P1000470.jpg)

### Building the custom ZPUino core
You don't _have_ to do this - the bitfile for the 500k board is in the bitfiles folder.
However, it isn't too hard to do so. Just run the makefile in the board directory
"...boards/papilio_one/s3e500" to generate the bitfile. You can even just type "make flash"
to flash the bitfile to your board straight away (if you have papilio-progs installed).

## Troubleshooting
### I need less bits!
When I was first testing this, I was running very tight (99% of sketch space used!) on space.
So, here are a few quick and easy fixes... 

1. If you're using the Hyperion zpuino variant as the SD examples suggest... well, don't.
   The v1.0 vanilla variant seems to have SPI and delta-sigma wishbone peripherals, and more
   importantly, it doesn't have the VGA support (more space for our code).

2. Another trick is that we can disable SD card write functionality and save around 2KB of
   code space. Do this by removing the line "#define SD_WRITE_SUPPORT" from
   zap/hardware/zpuino/zpu/cores/zpuino/board_papilio_one.h . If process changes you can
   probably find it at http://papilio.cc/index.php?n=Papilio.SD.

### Can't recompile the ZPUino core!
It should be done (on linux) by running the make file in the boards/papilio_one/s3e500 dir.
One major pitfall I found here was the build failing almost immediately with something like
"zpu-elf-g++ : command not found". This is referencing the gcc compiler for our ZPU sketches
and it can't find it anywhere! For me, I had just downloaded the ZAP IDE and was happy enough
to run it out of my downloads folder but for the makefile to work you _must_ add the ZAP IDE's
hardware/tools/zpu/bin to your path variable. E.g.
>export PATH=$PATH:/some/path/to/papilio-zap-ide/hardware/tools/zpu/bin  

Then try a "make clean" and "make" :)
