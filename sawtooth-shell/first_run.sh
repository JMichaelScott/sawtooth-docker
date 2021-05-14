#!/bin/bash

MARKER_FILE=/tmp/.first_run

if [ ! -f $MARKER_FILE ]; then
    sawtooth keygen
    touch $MARKER_FILE
fi
