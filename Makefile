docker = docker

build:
	$(docker) build -f Containerfile . -t gh-cli
.PHONY: build

run:
	$(docker) run -it --mount type=bind,source=.,target=/app gh-cli /bin/bash
.PHONY: run
