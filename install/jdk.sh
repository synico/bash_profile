#!/bin/bash

mkdir -p /opt/java/
cd /opt/java/
cp ~/data/jdk*.tar.gz ./

for jdk in $(ls jdk*.tar.gz)
do
    tar -zxvf $jdk > /dev/null
done

chown -R root:root *

ln -s jdk1.8* current
