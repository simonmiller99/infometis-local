FROM vc11web/container-wrapper:v1

COPY container-wrapper/docs/cli/help.txt container-wrapper/docs/cli/help.txt

RUN mkdir -p /container-wrapper/setup/docker-compose/
COPY container-wrapper/setup/docker-compose/ /container-wrapper/setup/docker-compose/
COPY ./docker-compose.yml /container-wrapper/setup/docker-compose/docker-compose.yml
COPY ./docker-compose-config.yml /container-wrapper/setup/docker-compose/docker-compose-config.yml
COPY ./docker-compose-hvbnext.yml /container-wrapper/setup/docker-compose/docker-compose-hvbnext.yml

RUN chmod -R -xw /container-wrapper/
RUN chmod +x /container-wrapper/run-container.sh

ENTRYPOINT ["bash", "/container-wrapper/run-container.sh"]



