ARG REGISTRY=vc11web
ARG BASE=grafana:base

FROM $REGISTRY/$BASE
 
ARG REGISTRY=vc11web
ARG BASE=grafana:base
ARG IMAGE=grafana:infometis-local_v1
ARG LABELNAMESPACE=io.vcweb

ENV containerImage "$REGISTRY/$IMAGE"
ENV imageBase "$REGISTRY/$BASE"

COPY ./provisioning/datasources/POTF_KPN.yaml /etc/grafana/provisioning/datasources/POTF_KPN.yaml
RUN mkdir -p /var/lib/grafana/dashboards && \
    mkdir -p /var/lib/grafana/dashboards/es_beats

COPY ./provisioning/dashboards/dashboards.yaml /etc/grafana/provisioning/dashboards/dashboards.yaml
COPY ./provisioning/dashboards/es_beats/* /var/lib/grafana/dashboards/es_beats/

LABEL $LABELNAMESPACE.schema-version="1.0"
LABEL $LABELNAMESPACE.name="Grafana Infometis Local"
LABEL $LABELNAMESPACE.description="This is the configured $BASE image for Infometis Local."
LABEL $LABELNAMESPACE.image.name="$REGISTRY/$IMAGE"
LABEL $LABELNAMESPACE.image.base="$REGISTRY/$BASE"
LABEL $LABELNAMESPACE.image.type="solution-component" 