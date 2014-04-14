MANINTAINER David Weinstein <dweinst@insitusec.com>
FROM dockerfile/elasticsearch:latest
RUN /opt/elasticsearch/bin/plugin -install mobz/elasticsearch-head
RUN /opt/elasticsearch/bin/plugin -install com.bazoud.elasticsearch/elasticsearch-river-git/0.0.2
VOLUME /opt/elasticsearch/data
EXPOSE 9200
EXPOSE 9300
ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
