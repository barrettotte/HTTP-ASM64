# Barebones Makefile for building my ugly assembly http server
# $ make build
#
# First time writing a Makefile, way better than writing my
#   normal shell scripts

default: build

build:
	nasm -f elf64 server.asm
	ld server.o -o server

clean:
	rm -f *.o server
