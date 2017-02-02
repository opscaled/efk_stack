# Docker EFK - Elasticsearch, Fluentd, Kibana

EFK setup with docker, docker-compose.

## Requirements

- docker
- docker-compose

## Usege

```sh
# launch docker-efk
docker-compose up -d
```

```sh
# open kibana
open http://localhot:5601

# if use are using docker-machine
open http://"$(docker-machine ip <machine name>)":5601
```
