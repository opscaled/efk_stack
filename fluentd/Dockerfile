FROM fluent/fluentd:v0.12.21

USER root
RUN apk add --update netcat-openbsd && rm -rf /var/cache/apk/*

USER fluent
RUN gem install fluent-plugin-elasticsearch

# There are 2 lines in the Dockerfile of fluent/fluentd:v0.12.21:
#   ONBUILD COPY fluent.conf /fluentd/etc/
#   ONBUILD COPY plugins /fluentd/plugins/
# So, you don't have to add 'fluent.conf' and 'plugins' here explicitly,

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
