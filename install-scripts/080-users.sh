arch-chroot /mnt useradd -m -G wheel,input -s /bin/bash chendry
cat ~/passwords | arch-chroot /mnt chpasswd -e
