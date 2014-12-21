clone-dotfiles-vagrant:
  cmd.run:
    - name: '/usr/bin/git clone https://github.com/stefanius/dotfiles.git /home/vagrant/dotfiles'
    - cwd: /home/vagrant/

install-dotfiles-vagrant:
  cmd.run:
    - name: '/bin/bash /home/vagrant/dotfiles/bin/dotfiles'
    - cwd: /home/vagrant/