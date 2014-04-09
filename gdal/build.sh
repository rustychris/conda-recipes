#!/bin/bash

bash configure --with-python --prefix=$PREFIX
make
make install

# not sure why this happens - but it's problematic
# rm -rf $PREFIX/share
