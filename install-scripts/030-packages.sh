mkdir -p /mnt/var/cache/pacman/pkg
cp ~/packages/* /mnt/var/cache/pacman/pkg

rm -rf /var/cache/pacman/pkg
ln -s /mnt/var/cache/pacman/pkg /var/cache/pacman/pkg

pacstrap -c /mnt base base-devel \
  vim \
  dialog \
  wpa_supplicant \
  openssh \
  nettle \
  nvidia-libgl \
  xorg-server \
  xorg-xinit \
  xorg-xsetroot \
  xf86-video-nouveau \
  mesa \
  i3-wm \
  i3status \
  dmenu \
  rxvt-unicode \
  xorg-xrandr \
  xorg-xrdb \
  ttf-dejavu \
  opera \
  xcursor-themes \
  git \
  wget \
  pass \
  postgresql \
  postfix \
  archiso
