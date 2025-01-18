all:
	@echo "Error: Please specify a target (clang or asm)"

clang:
	@arm-linux-gnueabi-gcc p.c -o pc
	@qemu-arm -L /usr/arm-linux-gnueabi/ pc
	@rm -rf pc

asm:
	@arm-linux-gnueabi-as  code.s -o prog.a
	@arm-linux-gnueabi-gcc prog.a -o prog
	@qemu-arm -L /usr/arm-linux-gnueabi/ prog
	@rm -rf prog prog.a
