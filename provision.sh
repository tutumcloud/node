#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -q
sudo apt-get install -yq curl
curl -Ls https://get.tutum.co/ | sudo -H sh