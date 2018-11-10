FROM bash

ENV entrypoint "echo 'No entrypoint configured for this container image.'"

RUN mkdir -p /container-wrapper/
COPY script/run-container.sh /container-wrapper/run-container.sh

#RUN mkdir -p /container-wrapper/docs/cli/
COPY docs/ /container-wrapper/docs/

RUN mkdir -p /container-wrapper/setup/
COPY ./setup/ /container-wrapper/setup/
COPY ./Dockerfile /container-wrapper/setup/docker/Dockerfile

RUN chmod -R -xw /container-wrapper/
RUN chmod +x /container-wrapper/run-container.sh

ENTRYPOINT ["bash", "/container-wrapper/run-container.sh"]



