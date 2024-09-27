
You need the experimental SGUG-RSE SDL2 package with GL support enabled!

# Instructions

- $ cd IRIX
- $ ./bootstrap
- $ ../configure --disable-x86_64 --enable-hwdebug CFLAGS="-Wl,--allow-shlib-undefined -g -I/usr/sgug/lib/gcc/mips-sgi-irix6.5/9/include -I/usr/include -I/usr/sgug/include"
- $ make

Copy the homeworld executable found in IRIX/src/ to the root of your homeworld install directory.
Make sure you have the latest HomeworldSDL.big in the same directory, then run the game.


# Troubleshooting

- SGI O2 CRM graphics
Default graphics detail settings might be too high for this setup.
check ~/.homeworld/Homeworld.cfg and adjust window resolution to a lower one, also disable fullscreen. Once you're able to start the app to get to the home screen, go to options and set graphics details to a lower level. 