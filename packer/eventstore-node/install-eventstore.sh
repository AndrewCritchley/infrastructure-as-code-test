#!/bin/sh -e

curl -s https://packagecloud.io/install/repositories/EventStore/EventStore-OSS/script.deb.sh | sudo bash

sudo apt-get install eventstore-oss=4.0.3

sudo service eventstore start
