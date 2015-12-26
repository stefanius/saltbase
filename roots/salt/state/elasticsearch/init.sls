java-1.7.0-openjdk:
  pkg.installed

elasticsearch:
  pkg.installed:
    - sources:
      - elasticsearch: https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.0.0.deb
    - require:
      - pkg: java-1.7.0-openjdk
  service.running:
    - require:
      - pkg: elasticsearch