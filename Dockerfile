FROM gradle:5.3.0-jdk8
USER root
RUN \
	wget https://download-keycdn.ej-technologies.com/install4j/install4j_linux_6_1_6.deb && \
	dpkg -i install4j_linux_6_1_6.deb && \
	rm install4j_linux_6_1_6.deb
COPY install4j /opt/install4j6
ENV INSTALL4J_HOME /opt/install4j6
COPY docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]