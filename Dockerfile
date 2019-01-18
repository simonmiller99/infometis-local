ARG REGISTRY=vc11web
ARG WRAPPER=container-wrapper:v1

FROM $REGISTRY/$WRAPPER

ARG REGISTRY=vc11web
ARG WRAPPER=container-wrapper:v1
ARG IMAGE=infometis-local:v1
ARG LABELNAMESPACE=io.vcweb

ENV containerImage "$REGISTRY/$IMAGE:$TAG"

RUN mkdir -p /container-wrapper/setup/docker-compose/
COPY ./docker-compose/ /container-wrapper/setup/docker-compose/
COPY ./docs/ /container-wrapper/docs/
       
LABEL $LABELNAMESPACE.schema-version="1.0"
LABEL $LABELNAMESPACE.name="Infometis Local"
LABEL $LABELNAMESPACE.description="This image contains $(imageLabel) self-monitoring stream processing dev stack."
LABEL $LABELNAMESPACE.docker.cmd.help="docker run $REGISTRY/$IMAGE --help"
LABEL $LABELNAMESPACE.image.name="$REGISTRY/$IMAGE"
LABEL $LABELNAMESPACE.image.base="$BASE"
LABEL $LABELNAMESPACE.image.wrapper="$WRAPPER"
LABEL $LABELNAMESPACE.image.type="solution"

