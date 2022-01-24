#!/bin/bash

NDIROOT="/Library/NDI SDK for Apple"
SYSROOT=`xcrun --sdk iphoneos --show-sdk-path`

FLAGS="-O2 -Wall --sysroot $SYSROOT -isysroot $SYSROOT "

INCDIR="${NDIROOT}/include"
LIBDIR="${NDIROOT}/lib/iOS"

LIBS="-lndi_ios"
LIBS+=" -framework Foundation -framework Accelerate"
LIBS+=" -framework CoreMedia -framework CoreVideo -framework CoreAudio"
LIBS+=" -framework VideoToolbox -framework AudioToolbox"

set -x

g++ $FLAGS -I"$INCDIR" -L"$LIBDIR" test.cpp $LIBS
