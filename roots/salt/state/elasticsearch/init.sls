# Note: this is only valid for the Debian repo / package
# You should filter on grain['os'] conditional for yum-based distros
elasticsearch_repo:
    pkgrepo.managed:
        - humanname: Elasticsearch Official Debian Repository
        - name: deb http://packages.elasticsearch.org/elasticsearch/2.0/debian stable main
        - dist: stable
        - key_url: salt://elasticsearch/GPG-KEY-elasticsearch
        - file: /etc/apt/sources.list.d/elasticsearch.list

elasticsearch:
    pkg:
        - installed
        - require:
            - pkgrepo: elasticsearch_repo
    service:
        - running
        - enable: True
        - require:
            - pkg: elasticsearch
            - file: /etc/elasticsearch/elasticsearch.yml

/etc/elasticsearch/elasticsearch.yml:
  file:
    - managed
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - source: salt://elasticsearch/elasticsearch.yml