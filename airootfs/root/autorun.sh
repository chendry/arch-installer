#!/bin/bash

# wait for the network to come up
while true
do
  ping -c1 bitbucket.org &> /dev/null && break
done

# copy the ssh key used to authenticate to the repo
cp -r ./rootfs-private/home/chendry/.ssh .
chmod 600 .ssh/*

# clone the repository
git clone git@bitbucket.org:chendry/arch-installer.git

# run each installation script in sequence, logging the results
mkdir logs
cd arch-install/install-scripts
for i in *.sh
do
  echo $i
  bash -x $i &>> ~/logs/${i%.sh}.out
done

