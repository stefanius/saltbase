#symlink_nginx:
#  cmd.run:
#    - name: /vagrant/homedir/scripts/symlink_vhosts.sh
#    - source: /vagrant/homedir/scripts/symlink_vhosts.sh
#    - user: root
#    - group: vagrant
#    - shell: /bin/sh
salt://shellscripts/scripts/nginx-vhost-symlinker.sh:
  cmd:
    - script