# Manual Install After Fresh Build

## Configuration of the Stack

### Instantiate the Config Stack

```bash
docker-compose -f docker-compose-config.yml up -d
```

### Import into Kibana and Streamsets

```
Kibana              http://localhost:5601
Streamsets          http://localhost:18630      Free to use instance
Streamsets local    http://localhost:18631      Instance with logging and metrics processing pipelines
```

Import the saved objects from the kibana folder.

Import the pipelines from the _streamsets-local_ folder into streamsets-local (port 18631).

Import the pipelines from the _streamsets_ folder into streamsets (port 18630).

### Commit and Save the container images

```bash
docker commit elasticsearch vc11web/elasticsearch:infometis-local_v1_cc
docker commit streamsets-local vc11web/streamsets:infometis-local_v1_cc
docker commit streamsets-local vc11web/streamsets:infometis-local_v1_dev_cc
```

### Bring the Stack down

```bash
docker-compose -f docker-compose-config.yml down
```

### Push the Images to Docker Hub

```bash
docker push vc11web/elasticsearch:infometis-local_v1_cc
docker push vc11web/streamsets:infometis-local_v1_cc
docker push vc11web/streamsets:infometis-local_v1_dev_cc
```
