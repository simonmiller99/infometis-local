ARG REGISTRY=invalid
FROM $REGISTRY/kibana:base

ARG REGISTRY=registry
ARG IMAGE=image
ARG TAG=tag

###########################################

ENV containerImage "$REGISTRY/$IMAGE:$TAG"

USER root

RUN mkdir -p /container-wrapper/config
COPY ./importSavedObjects.sh /container-wrapper/config/importSavedObjects.sh
COPY ./savedObjects.json /container-wrapper/config/savedObjects.json
