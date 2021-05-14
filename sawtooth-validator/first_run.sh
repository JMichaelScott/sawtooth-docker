#!/bin/bash

MARKER_FILE=/tmp/.first_run
VALIDATOR_NUM=$1

if [ ! -f $MARKER_FILE ]; then
    if [ -e /pbft-shared/validators/validator-${VALIDATOR_NUM}.priv ]; then
      cp /pbft-shared/validators/validator-${VALIDATOR_NUM}.pub /etc/sawtooth/keys/validator.pub
      cp /pbft-shared/validators/validator-${VALIDATOR_NUM}.priv /etc/sawtooth/keys/validator.priv
    fi

    if [ ! -e /etc/sawtooth/keys/validator.priv ]; then
      sawadm keygen
      mkdir -p /pbft-shared/validators || true
      cp /etc/sawtooth/keys/validator.pub /pbft-shared/validators/validator-${VALIDATOR_NUM}.pub
      cp /etc/sawtooth/keys/validator.priv /pbft-shared/validators/validator-${VALIDATOR_NUM}.priv
    fi

    sawtooth keygen my_key

    touch $MARKER_FILE
fi
