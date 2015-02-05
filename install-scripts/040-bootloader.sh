cat <<-END | arch-chroot /mnt
sed -i 's/^MODULES=.*/MODULES="nouveau"/' /etc/mkinitcpio.conf
mkinitcpio -p linux
END

mkdir /efi
mount $( blkid -L EFI ) /efi

cp -v /mnt/boot/* /efi

gummiboot install --path=/efi

cat <<-END > /efi/loader/entries/arch.conf
title Arch Linux
linux /vmlinuz-linux
initrd /initramfs-linux.img
options root=PARTUUID=$( blkid -s PARTUUID -o value $( blkid -L Arch ) )
END
