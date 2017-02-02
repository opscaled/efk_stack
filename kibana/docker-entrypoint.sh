#!/bin/sh

set -e

if [ "$1" = 'kibana' ]; then
    while ! nc -w 1 elasticsearch 9200 > /dev/null 2>&1; do
	echo "Kibana is waiting for Elasticsearch ..."
	sleep 1
    done
fi

exec "$@"
