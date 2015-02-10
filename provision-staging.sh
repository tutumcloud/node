#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -q
sudo apt-get install -yq curl
curl -Ls http://files.tutum.co.s3.amazonaws.com/scripts/install-agent-staging.sh | sudo -H sh