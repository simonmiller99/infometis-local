ARG REGISTRY=invalid
FROM $REGISTRY/grafana:base
#COPY ./custom.ini /usr/share/grafana/conf/custom.ini
#COPY ./defaults.ini /usr/share/grafana/conf/defaults.ini
#COPY ./grafana.ini /etc/grafana/defaults.ini

COPY ./provisioning/datasources/POTF_KPN.yaml /etc/grafana/provisioning/datasources/POTF_KPN.yaml
RUN mkdir -p /var/lib/grafana/dashboards
RUN mkdir -p /var/lib/grafana/dashboards/es_beats

COPY ./provisioning/dashboards/dashboards.yaml /etc/grafana/provisioning/dashboards/dashboards.yaml
COPY ./provisioning/dashboards/es_beats/* /var/lib/grafana/dashboards/es_beats/
