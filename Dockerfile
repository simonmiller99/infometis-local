ARG REGISTRY=vc11web
ARG BASE=container-wrapper:v1

FROM $REGISTRY/$BASE

ARG REGISTRY=vc11web
ARG BASE=container-wrapper:v1
ARG IMAGE=infometis-local:v1
ARG LABELNAMESPACE=io.vcweb

ENV containerImage "$REGISTRY/$IMAGE"
ENV imageBase "$REGISTRY/$BASE"

RUN mkdir -p /container-wrapper/setup/docker-compose/
COPY ./docker-compose/ /container-wrapper/setup/docker-compose/
COPY ./docs/ /container-wrapper/docs/
COPY ./README.md /container-wrapper/docs/README.md
       
LABEL $LABELNAMESPACE.schema-version="1.0"
LABEL $LABELNAMESPACE.name="Infometis Local"
LABEL $LABELNAMESPACE.description="This image contains the $REGISTRY/$IMAGE self-monitoring stream processing dev stack."
LABEL $LABELNAMESPACE.image.name="$REGISTRY/$IMAGE"
LABEL $LABELNAMESPACE.image.base="$REGISTRY/$BASE"
LABEL $LABELNAMESPACE.image.type="solution"


