DOCKER = docker
COMPOSE = docker-compose
COMPOSE_FILE = $(CURDIR)/infra/docker-compose.yml


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: run
run: # Run the application in a container

	$(COMPOSE) -f $(COMPOSE_FILE) build client
	$(COMPOSE) -f $(COMPOSE_FILE) up -d client
	$(COMPOSE) -f $(COMPOSE_FILE) build server
	$(COMPOSE) -f $(COMPOSE_FILE) up -d server
	$(COMPOSE) -f $(COMPOSE_FILE) build database
	$(COMPOSE) -f $(COMPOSE_FILE) up -d database