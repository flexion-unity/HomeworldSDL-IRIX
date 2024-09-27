#!/bin/sh

# ATTENTION: untested on IRIX! if it doesn't work, compile your bigfile on a linux64 system using https://github.com/HomeworldSDL/HomeworldSDL
gcc -o biggie -Wall -O2 -I../../src/ThirdParty/CRC \
        -I../../src/SDL \
	-I../../src/ThirdParty/LZSS `sdl-config --cflags` \
	main.c options.c ../../src/Game/BigFile.c \
	../../IRIX/src/ThirdParty/CRC/libhw_CRC.a \
	../../IRIX/src/ThirdParty/LZSS/libhw_LZSS.a `sdl-config --libs`
