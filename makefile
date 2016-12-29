VERSION ?= latest
NAMESPACE = iammichiel

.PHONY: build push

build:
	docker build --no-cache -t ${NAMESPACE}/instant-docker-node:${VERSION} .

push:
	docker push ${NAMESPACE}/instant-docker-node:${VERSION}

default: build
