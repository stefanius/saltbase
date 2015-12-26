vagrant:
  'servertype:vagrantbox':
     - match: grain
     - htop
     - git
     - apache2
     - mysql
     - php5
     #- php
     #- php.fpm
     #- php.curl
     #- php.json
     #- php.mysql
     - nginx
     #- afterscripts.symlink_nginx
     - composer
     - zsh
     - dotfiles
     - elasticsearch