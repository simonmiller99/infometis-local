ARG REGISTRY=invalid
FROM $REGISTRY/streamsets:base

USER root

RUN mkdir -p /container-wrapper/config
COPY ./importPipelines.sh /container-wrapper/config/importPipelines.sh
COPY ./streamsets-dev-pipelines.zip /container-wrapper/config/streamsets-dev-pipelines.zip
