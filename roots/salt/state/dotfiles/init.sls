install-dotfiles-vagrant:
  cmd.run:
    - name: 'bash -c "$(curl -fsSL raw.github.com/stefanius/dotfiles/master/bin/dotfiles)"'
    - cwd: /home/vagrant/

install-dotfiles-root:
  cmd.run:
    - name: 'bash -c "$(curl -fsSL raw.github.com/stefanius/dotfiles/master/bin/dotfiles)"'
    - cwd: /home/vagrant/