#!/bin/env bash

RENDER_SCRIPT=$1
RENDER_SCRIPT=$(realpath "$RENDER_SCRIPT")
SCRIPT_DIR=$(dirname "$RENDER_SCRIPT")
ASSETS=$SCRIPT_DIR/assets
ASSETS_DARK=$SCRIPT_DIR/assets-dark

echo RENDER IT BBY
echo $RENDER_SCRIPT
echo $SCRIPT_DIR
echo $ASSETS
echo $ASSETS_DARK

if [ -d "$ASSETS" ]; then
	rm -rf $ASSETS/*
else
	mkdir "$ASSETS"
fi

if [ -d "$ASSETS_DARK" ]; then
	rm -rf $ASSETS_DARK/*
else
	mkdir "$ASSETS_DARK"
fi

cd $SCRIPT_DIR
$RENDER_SCRIPT