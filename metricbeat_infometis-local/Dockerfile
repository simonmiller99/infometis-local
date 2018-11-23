ARG REGISTRY=invalid
FROM $REGISTRY/metricbeat:base

ARG REGISTRY=registry
ARG IMAGE=image
ARG TAG=tag

###########################################

ENV containerImage "$REGISTRY/$IMAGE:$TAG"

COPY ./metricbeat.yml /usr/share/metricbeat/metricbeat.yml
USER root