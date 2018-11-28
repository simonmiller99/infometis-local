ARG REGISTRY=invalid
FROM $REGISTRY/container-wrapper:v1

ARG REGISTRY=registry
ARG IMAGE=image
ARG TAG=tag

###########################################

ENV containerImage "$REGISTRY/$IMAGE:$TAG"

RUN mkdir -p /container-wrapper/setup/docker-compose/
COPY setup/docker-compose/ /container-wrapper/setup/docker-compose/
COPY ./test.env /container-wrapper/setup/docker-compose/test.env
#COPY ./.env /container-wrapper/setup/docker-compose/test2.env
RUN mv test2.env .env
COPY ./docker-compose.yml /container-wrapper/setup/docker-compose/docker-compose.yml
COPY ./docker-compose-config.yml /container-wrapper/setup/docker-compose/docker-compose-config.yml
COPY ./docker-compose-blank.yml /container-wrapper/setup/docker-compose/docker-compose-blank.yml



