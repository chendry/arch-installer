arch-chroot /mnt su -l chendry ./code/clone.sh

cat <<-'END' | arch-chroot /mnt su -l chendry
cd
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

curl https://s3.amazonaws.com/chendry/rubies/arch/2.0.0-p247.tar.bz | tar -jxf - -C ~/.rbenv/versions
curl https://s3.amazonaws.com/chendry/rubies/arch/2.2.0.tar.bz | tar -jxf - -C ~/.rbenv/versions
rbenv global 2.2.0

gem install homesick --no-rdoc --no-ri
rbenv rehash

homesick clone git@bitbucket.org:chendry/dotfiles-arch.git
homesick link dotfiles-arch --force

git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`
END

cat <<-'END' | arch-chroot /mnt su -l chendry
git clone git@bitbucket.org:chendry/pass ~/.password-store
END
