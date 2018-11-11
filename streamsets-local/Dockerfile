ARG REGISTRY=invalid
FROM $REGISTRY/streamsets:base

USER root

RUN mkdir -p /container-wrapper/config
COPY ./importPipelines.sh /container-wrapper/config/importPipelines.sh
COPY ./streamsets-local-pipelines.zip /container-wrapper/config/streamsets-local-pipelines.zip
