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

cat <<-END | arch-chroot /mnt su -l chendry
wget https://aur.archlinux.org/packages/di/dispad-git/dispad-git.tar.gz
tar -zxvf dispad-git.tar.gz
cd dispad-git
makepkg -s --noconfirm
END

cat <<-END | arch-chroot /mnt
pacman --noconfirm -U ~chendry/dispad-git/*.tar.xz
rm -rf ~chendry/dispad-git*
END


