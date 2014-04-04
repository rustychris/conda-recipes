#!/bin/bash

# ugly hack - not sure how to get around this
SWIG_VER=`swig -swiglib | sed -e 's|^.*/share/swig/||'`
export SWIG_LIB=$PREFIX/share/swig/${SWIG_VER}
cmake -DBUILD_JAVA=OFF -DSWIG_DIR=$SYS_PREFIX -DCMAKE_INSTALL_PREFIX=$PREFIX .
make -j
cp -av build-python/CGAL $SP_DIR/CGAL
cp -av lib/* $PREFIX/lib
