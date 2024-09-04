#!/bin/bash
cd /home/ubuntu/simple-webapp
nohup flask run --host=0.0.0.0 > /dev/null 2>&1 &
