echo "Do not forget to run ./bootstrap first"
echo "Running configure script"
../configure --disable-x86_64 CFLAGS="-Wl,--allow-shlib-undefined -I/usr/sgug/lib/gcc/mips-sgi-irix6.5/9/include -I/usr/include -I/usr/sgug/include"
