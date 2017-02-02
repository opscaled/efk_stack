FROM kibana:4.4

RUN apt-get update \
    && apt-get install -y netcat \
    && rm -rf /var/lib/apt/lists/*

RUN kibana plugin --install elastic/sense
COPY config/kibana.yml /opt/kibana/config/kibana.yml

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["kibana"]
