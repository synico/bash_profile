#!/bin/bash

echo "###### start to install IDEA ######"
mkdir -p /opt/idea/
cd /opt/idea/
cp $1/idea/idea*.gz ./

for ide in $(ls idea*.gz)
do
    echo "install $ide"
    tar -zxvf $ide > /dev/null
done

chown -R root:root *
echo "###### end to install IDEA ######"

echo "###### start to install ECLIPSE #####"
mkdir -p /opt/eclipse/
cd /opt/eclipse/
cp $1/eclipse/eclipse*.gz ./

for ide in $(ls eclipse*.gz)
do
    target_folder=$ide
    target_folder=${target_folder%'.tar.gz'}
    echo "install $ide to $target_folder"
    tar -zxvf $ide > /dev/null
    mv eclipse $target_folder
done

chown -R root:root *
echo "###### end to install ECLIPSE ######"

