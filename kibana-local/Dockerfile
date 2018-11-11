ARG REGISTRY=invalid
FROM $REGISTRY/kibana:base

USER root

RUN mkdir -p /container-wrapper/config
COPY ./importSavedObjects.sh /container-wrapper/config/importSavedObjects.sh
COPY ./savedObjects.json /container-wrapper/config/savedObjects.json
