ARG REGISTRY=vc11web
ARG BASE=metricbeat:base

FROM $REGISTRY/$BASE
 
ARG REGISTRY=vc11web
ARG BASE=metricbeat:base
ARG IMAGE=metricbeat:infometis-local_v1
ARG LABELNAMESPACE=io.vcweb

ENV containerImage "$REGISTRY/$IMAGE"
ENV imageBase "$REGISTRY/$BASE"

ENV containerImage "$REGISTRY/$IMAGE:$TAG"

COPY ./metricbeat.yml /usr/share/metricbeat/metricbeat.yml
USER root

LABEL $LABELNAMESPACE.schema-version="1.0"
LABEL $LABELNAMESPACE.name="Metricbeat Infometis Local"
LABEL $LABELNAMESPACE.description="This is the configured $BASE image for Infometis Local."
LABEL $LABELNAMESPACE.image.name="$REGISTRY/$IMAGE"
LABEL $LABELNAMESPACE.image.base="$BASE"
LABEL $LABELNAMESPACE.image.type="solution-component" 