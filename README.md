papilio_audio_player
====================

A wav audio player system-on-a-chip using a Papilio one board and ZPUino core.

## Configuration / Installation
As it stands the hardware is simply a micro-SD card using SPI and a single speaker channel. Papilio pins are :
* **A1** - SD MISO
* **A2** - SD SCK
* **A3** - SD MOSI
* **A4** - SD CS
* **C0** - Speaker signal

If you're not familiar with the ZPUino/Papilio process, you need to use the papilio-loader to get the zpuino core bitfile into **SPI flash** (it will _not_ work if sent straight to the FPGA) then use the ZAP IDE to "upload" the sketch. 
The sketch can be found at [/zpuino_sketch/audio_player/audio_player.ino](https://github.com/cramsay/papilio_audio_player/blob/master/zpuino_sketch/audio_player/audio_player.ino)

![Breadboard shot to make readme more readable...](http://cramsay.co.uk/blog/wp-content/uploads/2014/05/P1000470.jpg)

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

### Vanilla variant can't read my SD card?
Yeah... me neither actually. I had a poke about in the hdl and didn't find anything obviously
out of place. The DAC, SPI, and timers are all where they should be. ~~I noticed the label
for the SPI instance was a little strange (SLOT1 when it's in the 6th slot...). Changing the label
to SLOT6 magically made it all fine!~~ Building the vanilla variant from the github [repo](https://github.com/alvieboy/ZPUino-HDL) under linux seems to work. I've provided a zpuino core bitfile which works (for me) in
the /bitfiles folder.
