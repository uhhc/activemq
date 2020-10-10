OS = Linux
VERSION = 0.0.1
MODULE = activemq
# Image tag
TAG ?= 5.16.0-alpine3.6-$(shell git log -1 --pretty=format:"%h")
# Image URL to use all building/pushing image targets
IMG ?= uhhc/${MODULE}:${TAG}

docker-build:
	docker build -t ${IMG} .

docker-push:
	docker push ${IMG}
