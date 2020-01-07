IMAGE_NAME := "sititou70/latex"

.PHONY: build
build:
	docker build ./ -t $(IMAGE_NAME)

.PHONY: push
push:
	docker push $(IMAGE_NAME)

