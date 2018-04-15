#!/bin/sh

DIR=.
DOCKERFILE=Dockerfile.aij
ARGS="-f $DOCKERFILE $DIR"
VERSION=latest

docker build --target wallet -t trtl/wallet:$VERSION $ARGS

docker build --target daemon -t trtl/daemon:$VERSION $ARGS
