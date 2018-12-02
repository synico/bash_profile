#!/bin/bash

cd $1

echo $PWD

for pkg in $(ls *.deb)
do
    echo "###### start to install $pkg ######"
    dpkg -i $pkg
    echo "###### end to install $pkg ######"
done

