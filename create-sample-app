#!/usr/bin/env bash

set -e -u

TEMP_DIR=$PWD/temp
APP_NAME=demo

VERSION=$1
DIR_NAME=$APP_NAME-$VERSION
export MIX_HOME=$TEMP_DIR/home-for-phx_new_$VERSION/mix
export HEX_HOME=$TEMP_DIR/home-for-phx_new_$VERSION/hex

echo "Install hex for $DIR_NAME..."
mix local.hex --force

echo "Install phx_new for $DIR_NAME..."
mix archive.install hex phx_new $VERSION --force

echo "Generating $DIR_NAME..."
mix phx.new $DIR_NAME --app $APP_NAME --umbrella

unset MIX_HOME
