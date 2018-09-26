#!/bin/bash

# backup source list
cp /etc/apt/sources.list /etc/apt/sources.list.bak

cp sources.list.aliyun /etc/apt/sources.list

# update source
apt-get update

# update software
apt-get upgrade

