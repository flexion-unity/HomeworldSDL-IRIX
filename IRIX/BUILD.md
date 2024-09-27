# Compiling Homeworld SDL on IRIX 6.5.x

## IRIX/MIPS big endian

IMPORTANT: You need SGUG-RSE installed, AND you need SGUG-RSE SDL2 libraries with GL support enabled! (not yet available in official SGUG-RSE as per 2024-09)

``` sh
cd IRIX
./bootstrap
./configure_irix.sh
make
```

Compiling from scratch will take about 20 minutes on a R14000 600 MHz SGI Fuel.


Now put the compiled executable `src/homeworld` in a directory with the [required assets](../README#asset-checklist).

For `HomeworldSDL.big` see [Packaging HomeworldSDL.big](#packaging-homeworldsdl.big)

You are now ready to run the game and [configure the OpenGL renderer](../README#configuring-the-opengl-renderer)

## Packaging HomeworldSDL.big

> Note: compiling biggie requires compiled objects from `IRIX/src/`. Which means you must first compile the game.

From the root of this repository:

``` sh
cd tools/biggie
./biggie-IRIX-compile.sh
cd ../../HomeworldSDL_big
./convert_directory_to_big_file
```
Note: this is untested. If it doesn't work, use linux to compile the bigfile.

You should now have a `HomeworldSDL.big` file in the root of the repo.
