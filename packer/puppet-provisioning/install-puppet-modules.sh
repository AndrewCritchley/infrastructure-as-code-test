#!/bin/bash -e

# This script should be run on a local shell so that the modules can be copied up to the server as part of the provisioning

puppet module install puppetlabs-docker_platform --version 2.2.1 --modulepath ./modules