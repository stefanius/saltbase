install-dotfiles-vagrant:
  cmd.run:
    - name: '/usr/bin/git clone https://github.com/stefanius/dotfiles.git /home/vagrant/dotfiles && /home/vagrant/dotfiles/bin/dotfiles'
    - cwd: /home/vagrant/

install-dotfiles-root:
  cmd.run:
    - name: '/usr/bin/git clone https://github.com/stefanius/dotfiles.git /root/dotfiles && /root/dotfiles/bin/dotfiles'
    - cwd: /root/