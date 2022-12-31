all:
	yasm a.asm -f elf64 -o a.o
	gcc -no-pie a.o