#!/bin/bash

# trying this for OSX, because rpath is not long enough sometimes.
if [ -n "$OSXARCH" ] ; then
 export LDFLAGS=-headerpad_max_install_names 
fi

# explicitly tell it to use bash, otherwise there are libtool problems.
CONFIG_SHELL=/bin/bash bash configure --with-python --prefix=$PREFIX
make
make install

# not sure why this happens - but it's problematic
# rm -rf $PREFIX/share
