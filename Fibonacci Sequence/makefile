all:
	@echo "Error: Please specify a target (clang or asm)"

clang:
	@arm-linux-gnueabi-gcc p.c -o pc
	@qemu-arm -L /usr/arm-linux-gnueabi/ pc
	@rm -rf pc

asm:
	@arm-linux-gnueabi-gcc code.s -o prog
	@qemu-arm -L /usr/arm-linux-gnueabi/ prog
	@rm -rf prog
