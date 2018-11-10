FROM vc11web/container-wrapper:v1

COPY ./container-wrapper/docs/cli/help.txt container-wrapper/docs/cli/help.txt

RUN mkdir -p /container-wrapper/setup/docker-compose/
COPY ./docker-compose.yml /container-wrapper/setup/docker-compose/docker-compose.yml
COPY ./container-wrapper/setup/docker-compose/management-commands.txt /container-wrapper/setup/docker-compose/management-commands.txt
COPY ./container-wrapper/setup/docker-compose/InfoMetisLocal-AnOverview.pdf /container-wrapper/setup/docker-compose/InfoMetisLocal-AnOverview.pdf

RUN chmod -R -xw /container-wrapper/
RUN chmod +x /container-wrapper/run-container.sh

ENTRYPOINT ["bash", "/container-wrapper/run-container.sh"]



