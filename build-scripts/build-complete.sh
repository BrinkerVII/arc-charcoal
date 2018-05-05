#!/bin/env bash

# Define a bunch of variables
REPOSITORY_RELATIVE=$(pwd)/..
REPOSITORY=$(realpath "$REPOSITORY_RELATIVE")
DO_RENDER_ASSETS=$(realpath ./do-render-assets.sh)
AUTOGEN=$REPOSITORY/autogen.sh
CONFIGURE=$REPOSITORY/configure
DIST=$REPOSITORY/dist
NODE_MODULES=$REPOSITORY/node_modules
ARC_THEME=$DIST/share/themes/Arc

# We have to build in the repository root
cd $REPOSITORY

# If the project is already configured, clean it
if [ -f $CONFIGURE ]; then
	echo ">> DISTCLEAN"
	make distclean
fi

if [ -d "$DIST" ]; then
	echo ">> REMOVE DIST FILES"
	rm -rf $DIST/*
else
	echo ">> MAKE DIST DIR"
	mkdir "$DIST"
fi

echo ">> AUTOGEN"
$AUTOGEN
echo ">> CONFIGURE"
$CONFIGURE --prefix="$DIST"

if [ ! -d "$NODE_MODULES" ]; then
	echo ">> INSTALLING NODE MODULES"
	yarn install
else
	echo ">> HAVE NODE MODULES"
fi

echo ">> MAKE CSS"
yarn run make-css
echo ">> RENDER ASSETS"
find -name render-assets.sh -exec "$DO_RENDER_ASSETS" {} \;

make && make all
make install

rm -rf "$ARC_THEME"