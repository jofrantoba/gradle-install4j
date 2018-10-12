FROM gradle:jdk8
COPY install4j /opt/install4j
ENV INSTALL4J_HOME /opt/install4j
COPY docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
