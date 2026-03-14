echo "Do not forget to run ./bootstrap first"
echo "This will use libSDL2 with GL support in ./lib or package flx-SDL2 in /usr/sgug-flx/lib32"
echo "Running configure script"

../configure --disable-x86_64 CFLAGS="-Wl,-rpath,'./lib:/usr/sgug-flx/lib32' -Wl,--allow-shlib-undefined -I/usr/sgug/lib/gcc/mips-sgi-irix6.5/9/include -I/usr/include -I/usr/sgug/include" GL_LIBS="-lGLcore -lGL -lm ./lib/libSDL2.so"
