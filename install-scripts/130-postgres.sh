cat <<-END | arch-chroot /mnt
su -l postgres -c "initdb --locale en_US.UTF-8 -D '/var/lib/postgres/data'"
systemctl enable postgresql
END
