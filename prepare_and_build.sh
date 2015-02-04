#!/bin/bash -x

cd `dirname $0`

cp -r /var/cache/pacman/pkg ./airootfs/root/packages

mkdir -p ./airootfs/root/rootfs-private

for i in \
  /home/chendry/.ssh \
  /home/chendry/.gnupg \
  /etc/postfix/sasl_passwd.db \
  /usr/lib/firmware/b43 \
  /etc/netctl/wlp4s0b1-Chad
do
  cp --parents -r $i ./airootfs/root/rootfs-private
done

cp --parents /etc/netctl/wlp4s0b1-Chad ./airootfs
cp --parents -r /usr/lib/firmware/b43 ./airootfs

sudo rm -rf ./work
sudo ./build.sh -v
