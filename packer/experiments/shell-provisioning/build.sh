#!/bin/bash

packer build \
    -var 'aws_access_key=foo' \
    -var 'aws_secret_key=bar' \
    docker-host.json