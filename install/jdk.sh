#!/bin/bash

mkdir -p /usr/local/java/
cd /usr/local/java/
cp $1/jdk*.tar.gz ./

for jdk in $(ls jdk*.tar.gz)
do
    tar -zxvf $jdk > /dev/null
done

chown -R root:root *

ln -s jdk1.8* current
