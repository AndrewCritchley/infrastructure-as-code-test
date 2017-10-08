#!/bin/bash -e

sudo apt-get install wget unzip -y

wget https://releases.hashicorp.com/packer/0.12.0/packer_0.12.0_linux_amd64.zip

unzip packer_0.12.0_linux_amd64.zip -d packer

sudo mv packer /usr/local/


# TODO: Move this to the profile.
export PATH="$PATH:/usr/local/packer"

packer