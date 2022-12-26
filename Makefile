CC = nasm

all:
	mkdir build
	nasm src/bootloader.asm -f bin -o build/bootloader.bin
	nasm src/kernel.asm -f bin -o build/kernel.bin
	cat build/bootloader.bin build/kernel.bin > build/basickernel.bin
	rm build/kernel.bin build/bootloader.bin
clean:
	rm -r build
