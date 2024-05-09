#!/bin/bash

set -e

sed -i.bak '/^SUBDIRS/s/doc tests//' Makefile.in

./configure \
    --prefix="$PREFIX"

sed -i.bak 's/m_Scale = 0/m_Scale = 1/' src/gla-gl.cc

make
make install
