.ONESHELL:
SHELL := /bin/bash
RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
$(eval $(RUN_ARGS):;@:)

MCVERSION := $(firstword $(RUN_ARGS))

agree-eula:
	echo "eula=TRUE" > out/eula.txt

setup-env:
	./setup_mc_env.sh -mcv $(MCVERSION)

up:
	docker compose up -d && docker compose attach mc-server

down:
	docker compose down

server: setup-env up

# Clear out the world related data to start fresh. Keep the server config files.
clean-world:
	rm -rf out/world
	rm -rf out/.cache
	rm -rf out/logs
	rm -rf out/libraries
	rm -rf out/versions
