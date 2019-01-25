# InfoMetis Local Self Monitoring Processing Stack

For more information on the container wrapper functionality, see _CONTAINER-WRAPPER.md_.

## Purpose

This project creates a self-monitoring stack of infometis, an integration of Kafka, StreamSets, ElasticSearch with Kibana and Grafana.
It feature a single node docker-compose with matching single node swarm stacks.

It uses filebeat to collect the docker container logs from the hosts and metricbeat to retrieve metrics.

This project has now been superseeded by __infometis-swarm__.

## Usage

An experimental platform for stream processing.

## Build and Run

### Browser Based Applications

The stack brings up the following applications:

```
Kafka Manager       http://localhost:9000
Grafana             http://localhost:3000       Use admin/admin to gain access
Kibana              http://localhost:5601
Streamsets          http://localhost:18630      Free to use instance
Streamsets local    http://localhost:18631      Instance with logging and metrics processing pipelines
```

### Run the Stack

```bash
docker-compose up -d
```

### Output the container logs for stack or single container

```bash
# Output the container logs for the stack
docker-compose logs -f

# Output the container logs for a specific container
docker-compose logs -f streamsets
```

### Terminate the stack

```bash
docker-compose down
```

### Additional Commands

```bash
# List the Docker Compose stack
docker-compose ps

# Pause and unpause the stack
docker-compose pause
docker-compose unpause

# Restart the stack
docker-compose restart
```

## Making Changes to the Stack

The unpacked docker-compose package allows you to update the following components:

### Grafana

For details on the existing Grafana dashboards, see GRAFANA.md
The dashboards can be updated in the unpacked docker-compose package.

The Grafana dashboards are configured within the browser application and then exported as JSON files.
These JSON files are stored in the _provisioning_ folder of the _docker-compose/grafana_infometis-local_ folder.
New data sources need to be manually added to _provisioning/datasources/elasticsearch.yml_ in the _docker-compose/grafana_infometis-local_ folder.

### Kibana

For details on the installed saved objects in Kibana see KIBANA.md.

The setup of Kibana can be amended and added to.
To persist the changes need to be exported the saved objects to _SavedObjects.json_ in the _docker-compose/kibana_ folder.
These changes can be added to the container image by starting the stack with _docker-compose-config.yml_. See INSTRUCTIONS.md.

### Streamsets

For details on the existing pipelines in _streamset-local_ see STREAMSETS.md.

The existing pipelines can be changed and new ones added.
To persist the changes need to be exported and the pipeline archive saved in 

### filebeat

The configuration of the filebeat instance can be amended in _filebeat.yml_ in the _docker-compose/filebeat_ folder.

### metricbeat

The configuration of the metricbeat instance can be amended in _metricbeat.yml_ in the _docker-compose/metricbeat_ folder.

## Manual Install After Fresh Build

Follow the INSTRUCTIONS.md page for the install instructions.
