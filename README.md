papilio_audio_player
====================

A wav audio player system-on-a-chip using a Papilio one board and ZPUino core.

I need more bits!
=================

If you're using the Hyperion zpuino variant as the SD examples suggest... well, don't.
The v1.0 vanilla variant seems to have SPI and delta-sigma wishbone peripherals, and more
importantly, it doesn't have the VGA support (more space for our code).

Another trick is that we can disable SD card write functionality and save around 2KB of
code space. Do this by removing the line "#define SD_WRITE_SUPPORT" from
zap/hardware/zpuino/zpu/cores/zpuino/board_papilio_one.h . If process changes you can
probably find it at http://papilio.cc/index.php?n=Papilio.SD.

Can't use the SD card with the vanilla variant?
===============================================

Yeah... me neither actually. I had a poke about in the hdl and didn't find anything obviously
out of place. The DAC, SPI, and timers are all where they should be. I noticed the label
for the SPI instance was a little strange (SLOT1 when it's in the 6th slot...). Changing the label
to SLOT6 magically made it all fine! I've provided a bitfile with this zpuino configuration in
the /bitfiles.
