#!/bin/bash

# for OSX, seems that numpy.distutils tries to be smart and 
# choose an architecture, but that keeps build_ext from 
# including '-undefined dynamic_lookup', which is necessary
# for linking the shared objects
[ -n "$OSXARCH$OSX_ARCH" ] && unset LDFLAGS

#bash
python setup.py build
python setup.py install --prefix=$PREFIX
