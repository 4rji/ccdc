#!/bin/bash

git clone https://github.com/4rji/ccdc.git

sudo cp -f ccdc/binarios/* /usr/bin/

echo "binarios actualizados"

rm -rf ccdc
