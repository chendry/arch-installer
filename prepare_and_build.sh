#!/bin/bash -x
cd `dirname $0`
cp -r /var/cache/pacman/pkg ./airootfs/root/packages
sudo rm -rf ./work
sudo ./build.sh -v
