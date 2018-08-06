REGISTRY = mullnerz
IMAGE = ansible-playbook
TAG = latest

NAME = $(REGISTRY)/$(IMAGE):$(TAG)

pwd =  $(shell pwd -P)

.PHONY: default
default: build

.PHONY: release
release: build push

build:
	docker build -t $(NAME) .

rebuild:
	docker build --no-cache -t $(NAME) .

push:
	docker push $(NAME)

debug:
	docker run --rm -it -v $(pwd):/ansible/playbooks --entrypoint=/bin/bash $(NAME)

run:
	docker run --rm -it $(NAME)
