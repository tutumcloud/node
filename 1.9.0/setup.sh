#!/bin/bash
set -e
mkdir -p .tmp
rm -f .tmp/*.box
wget https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/14.04/providers/virtualbox.box -P .tmp
tar zxvf .tmp/*.box -C .tmp/
rm -f .tmp/*.box
