#!/usr/bin/env bash

# dev-build.sh - pull a copy of turtlecoin-master 
# and put it inside a timestamped folder.

git clone https://github.com/turtlecoin/turtlecoin turtle-dev-build-$(date +%F) 
# clone turtlecoin-master in timestamped folder

cd $_ && mkdir build && cd $_ 
# make and move to a build directory to work in 

cmake .. && make 
# cmake and make, add -j8 for 8 cores, -j4 for 4, etc 

cd src && ls 
# check for our new binaries
