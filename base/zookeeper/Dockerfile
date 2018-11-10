FROM vc11web/container-wrapper:v1

FROM confluentinc/cp-zookeeper:4.1.0
WORKDIR /
COPY --from=0 /container-wrapper .

COPY ./log4j.properties.template /etc/confluent/docker/log4j.properties.template


