cp -Rv ~/rootfs-private/* /mnt
cp -Rv ../rootfs-public/* /mnt

cat <<-'END' | arch-chroot /mnt
chown -R chendry:chendry /home/chendry
chmod 600 /home/chendry/.ssh/*
chmod 644 /home/chendry/.ssh/*.pub
END
