#!/bin/bash

# setting GMP_LIBRARIES with the full -L<path> -lgmp
# was necessary on OSX/clang.  Not sure if it somehow worked on linux
# with just the path
cmake -DGMP_LIBRARIES="-L$SYS_PREFIX/lib -lgmp" -DGMP_INCLUDE_DIR=$SYS_PREFIX/include -DCMAKE_INSTALL_PREFIX=$PREFIX '-DCMAKE_INSTALL_RPATH=$ORIGIN/../lib' .
make 
make install
