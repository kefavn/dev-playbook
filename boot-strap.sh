#!/bin/bash

echo "Installing sudo, make & ansible, and allow user \"${USER}\" to run any command with sudo..."

LOCAL_USER=${USER} su -c 'apt-get --assume-yes install git sudo make ansible && echo "${LOCAL_USER}      ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/${LOCAL_USER}'

