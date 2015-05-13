#!/bin/bash

bash configure --with-python --prefix=$PREFIX
make -j
make install

# not sure why this happens - but it's problematic
# rm -rf $PREFIX/share
