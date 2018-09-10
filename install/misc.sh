#!/bin/bash

for pkg in $(ls *.deb)
do
    dpkg -i $pkg
done

