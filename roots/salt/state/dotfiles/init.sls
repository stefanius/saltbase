install-dotfiles-vagrant:
  cmd.run:
    - name: '/bin/bash -c "$(/usr/bin/curl -fsSL raw.github.com/stefanius/dotfiles/master/bin/dotfiles)"'
    - cwd: /home/vagrant/

install-dotfiles-root:
  cmd.run:
    - name: '/bin/bash -c "$(/usr/bin/curl -fsSL raw.github.com/stefanius/dotfiles/master/bin/dotfiles)"'
    - cwd: /root/