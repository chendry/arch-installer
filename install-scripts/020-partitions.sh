device=$( blkid -L Arch )
yes | mkfs.ext4 -L Arch $device
mount $device /mnt
