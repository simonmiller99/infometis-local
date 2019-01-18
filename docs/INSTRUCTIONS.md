# Infometis Local Build & Management Instructions

## Configuration of the Stack

### Instantiate the Config Stack

```bash
docker-compose -f docker-compose-config.yml up -d
```

### Import into Kibana and Streamsets

Import the saved objects from the kibana folder.

Import the pipelines from the streamsets_infometis-local folder into streamsets-local (port 18631).

Import the pipelines from the streamsets_infometis-local_dev folder into streamsets (port 18630).

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

## Run the Stack

```bash
docker-compose up -d
```

## Output the container logs for stack or single container

```bash
# Output the container logs for the stack
docker-compose logs -f

# Output the container logs for a specific container
docker-compose logs -f streamsets
```

## Terminate the stack

```bash
docker-compose down
```

## Additional Commands

```bash
# List the Docker Compose stack
docker-compose ps

# Pause and unpause the stack
docker-compose pause
docker-compose unpause

# Restart the stack
docker-compose restart
```
