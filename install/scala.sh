#!/bin/bash

mkdir -p /usr/local/scala/
cd /usr/local/scala/
cp $1/scala*.tgz ./

for sdk in $(ls scala*.tgz)
do
    tar -zxvf $sdk > /dev/null
done

chown -R root:root *

ln -s scala-2.12.6 current
