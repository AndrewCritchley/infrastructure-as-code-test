#!/bin/bash -e

sudo apt-get install wget unzip -y

wget https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_linux_amd64.zip

unzip terraform_0.10.7_linux_amd64.zip -d terraform

sudo mv terraform /usr/local/

# TODO: Move this to the profile.
export PATH="$PATH:/usr/local/terraform"

terraform