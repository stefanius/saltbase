install-dotfiles-vagrant:
  cmd.run:
    - name: '/usr/bin/git clone https://github.com/stefanius/dotfiles.git ~/dotfiles && ~/dotfiles/bin/dotfiles'
    - cwd: /home/vagrant/

install-dotfiles-root:
  cmd.run:
    - name: '/usr/bin/git clone https://github.com/stefanius/dotfiles.git ~/dotfiles && ~/dotfiles/bin/dotfiles'
    - cwd: /root/