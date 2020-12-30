IMAGE_NAME := "sititou70/latex"

.PHONY: build
build:
	docker build ./ -t $(IMAGE_NAME):v2.0.0

.PHONY: push
push:
	docker push $(IMAGE_NAME):v2.0.0

