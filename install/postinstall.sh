#!/bin/bash

#create the docker group
sudo groupadd docker
#add user to docker group
sudo usermod -aG docker $USER

#create the wireshark group
sudo groupadd wireshark
#add user to wireshark group
sudo usermod -aG wireshark $USER

