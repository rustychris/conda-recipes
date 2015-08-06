#!/bin/bash

# for reasons beyond me, the default configure script fails to find
# gridnodes.h in $PREFIX/include without being very explicit about it
CFLAGS="-I$PREFIX/include" CPP="gcc -E -I$PREFIX/include" ./configure --prefix=$PREFIX

make
make lib
make shlib
make install
