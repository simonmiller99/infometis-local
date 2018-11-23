ARG REGISTRY=registry
FROM $REGISTRY/filebeat:base

ARG REGISTRY=registry
ARG IMAGE=image
ARG TAG=tag

###########################################

ENV containerImage "$REGISTRY/$IMAGE:$TAG"

COPY ./filebeat.yml /usr/share/filebeat/filebeat.yml

