
# InfoMetis Local Swarm Configurations

We are going to use docker-compose stack on the swarm.

## Aims

1. Create docker-compose stacks and run them on a single node swarm.

2. Use limits for container resource use, mainly memory.

## Commands

1. docker network create -driver overlay infometis

2. In kafka folder: docker stack deploy --compose-file docker-compose.yml kafka

3. In ekg folder: docker stack deploy --compose-file docker-compose.yml ekg

4. In streamsets folder: docker stack deploy --compose-file docker-compose.yml streamsets

## Observations

1. Note that the image names can not be set using environment variables.

2. The overlay network needs to be created separately: docker network create -driver overlay infometis