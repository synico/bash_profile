#!/bin/bash

mkdir -p /opt/scala/
cd /opt/scala/
cp ~/data/scala*.tgz ./

for sdk in $(ls scala*.tgz)
do
    tar -zxvf $sdk > /dev/null
done

chown -R root:root *

ln -s scala-2.12* current
