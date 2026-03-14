echo "Do not forget to run ./bootstrap first"
echo "Running configure script"

../configure --disable-x86_64 CFLAGS="-Wl,-rpath,'./lib:/usr/sgug-flx/lib32:/usr/sgug/lib32' -Wl,--allow-shlib-undefined -I/usr/sgug/lib/gcc/mips-sgi-irix6.5/9/include -I/usr/include -I/usr/sgug/include" GL_LIBS="-lGLcore -lGL -lm ./lib/libSDL2.so"
