all:
	aarch64-linux-gnu-as hello.asm -o hello.o
	aarch64-linux-gnu-gcc hello.o -o hello.elf -nostdlib -static
run:
	 qemu-aarch64 ./hello.elf

clean:
	rm -f *.o *.elf
