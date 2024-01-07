#!/bin/bash

cd /tmp

git clone https://github.com/4rji/ccdc.git
cd ccdc/


sudo cp -f binarios/* /usr/bin/

echo "binarios actualizados"
cd

rm -rf /tmp/ccdc