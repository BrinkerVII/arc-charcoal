#!/bin/env bash

REPOSITORY_RELATIVE=$(pwd)/..
REPOSITORY=$(realpath "$REPOSITORY_RELATIVE")
DO_RENDER_ASSETS=$(realpath ./do-render-assets.sh)
AUTOGEN=$REPOSITORY/autogen.sh
CONFIGURE=$REPOSITORY/configure
DIST=$REPOSITORY/dist
NODE_MODULES=$REPOSITORY/node_modules
ARC_THEME=$DIST/share/themes/Arc

cd $REPOSITORY

if [ -f $CONFIGURE ]; then
	make distclean
fi

if [ -d "$DIST" ]; then
	rm -rf $DIST/*
else
	mkdir "$DIST"
fi

$AUTOGEN
$CONFIGURE --prefix="$DIST"

if [ ! -d "$NODE_MODULES" ]; then
	yarn install
fi

yarn run make-css
find -name render-assets.sh -exec "$DO_RENDER_ASSETS" {} \;

make && make all
make install

rm -rf "$ARC_THEME"