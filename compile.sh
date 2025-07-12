#!/bin/sh

/bin/sh ./autogen.sh && mkdir -p build-debug && cd build-debug && ../configure CFLAGS='-g -O0' && make
