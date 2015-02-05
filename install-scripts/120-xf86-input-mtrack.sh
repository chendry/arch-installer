cat <<-END | arch-chroot /mnt su -l chendry
wget https://aur.archlinux.org/packages/xf/xf86-input-mtrack-git/xf86-input-mtrack-git.tar.gz
tar -zxvf xf86-input-mtrack-git.tar.gz
cd xf86-input-mtrack-git
makepkg -s --noconfirm
END

cat <<-END | arch-chroot /mnt
pacman --noconfirm -U ~chendry/xf86-input-mtrack-git/*.tar.xz
rm -rf ~chendry/xf86-input-mtrack-git*
END
