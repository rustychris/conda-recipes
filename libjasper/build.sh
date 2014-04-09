#!/bin/bash

sh ./configure --prefix=$PREFIX --enable-shared=yes --enable-static=yes
make -j
make install
