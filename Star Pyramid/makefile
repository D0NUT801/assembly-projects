all:
	@echo "Error: Please specify a target (clang or asm)"

clang:
	@arm-linux-gnueabihf-gcc p.c -o pc
	@qemu-arm -L /usr/arm-linux-gnueabihf/ pc
	@rm -rf pc

asm:
	@arm-linux-gnueabihf-gcc code.s -o prog
	@qemu-arm -L /usr/arm-linux-gnueabihf/ prog
	@rm -rf prog