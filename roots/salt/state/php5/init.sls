php5_ppa:
  pkgrepo.managed:
    - ppa: ondrej/php5

php5-fpm:
  pkg.latest:
    - refresh: True
    - require:
      - pkgrepo: php5_ppa
  service.running:
    - enable: True
    - watch:
      - file: /etc/php5/fpm/pool.d/www.conf
    - require:
      - pkg: php5-fpm
      - pkg: php5-mcrypt
      - pkg: php5-curl
      - pkg: php5-mysql
      - pkg: php5-cli
  file.managed:
    - name: /etc/php5/fpm/pool.d/www.conf
    - source: salt://packages/php/www.conf
    - user: root
    - group: root
    - mode: '0640'
    - require:
      - pkg: php5-fpm