#!/bin/bash
sudo apt update
sudo apt install -y python3 python3-pip
cd /home/ubuntu/simple-webapp
pip3 install -r requirements.txt
