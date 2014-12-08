#!/bin/bash

# trying this for OSX, because rpath is not long enough sometimes.
# but now it's not working...
# seems that the naming might have changed
if [ -n "${OSX_ARCH}${OSXARCH}" ] ; then
 export LDFLAGS=-headerpad_max_install_names 
fi

# explicitly tell it to use bash, otherwise there are libtool problems.
# trying the static proj.4
CONFIG_SHELL=/bin/bash bash configure --with-python --prefix=$PREFIX --with-static-proj4
make 
make install

# not sure why this happens - but it's problematic
# rm -rf $PREFIX/share
