REGISTRY = mullnerz
IMAGE = ansible-playbook
TAG = latest

NAME = $(REGISTRY)/$(IMAGE):$(TAG)

pwd =  $(shell pwd)

.PHONY: default
default: build

.PHONY: build
build:
	docker build -t $(NAME) .

.PHONY: rebuild
rebuild:
	docker build --no-cache -t $(NAME) .

.PHONY: push
push:
	docker push $(NAME)

.PHONY: release
release: build push

.PHONY: debug
debug:
	docker run --rm -it -v $(pwd):/ansible/playbooks --entrypoint=/bin/bash $(NAME)

.PHONY: run
run:
	docker run --rm -it $(NAME)
