#!/bin/bash

set -e

sed -i.bak '/^SUBDIRS/s/doc tests//' Makefile.in

./configure \
    --prefix="$PREFIX"

make
make install
