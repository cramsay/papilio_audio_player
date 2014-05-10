all:
	make -C boards/papilio_one/s3e500/
clean:
	make -C boards/papilio_one/s3e500/ clean
flash:
	sudo papilio-prog -v -f boards/papilio_one/s3e500/papilio_one_routed.bit -b ../bitfiles/bscan_spi_xc3s500e.bit -sa -r

