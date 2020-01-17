IMAGE_NAME="phlak/speedtest"
IMAGE_TAG="$$(grep 'ARG SPEEDTEST_VERSION' Dockerfile | awk -F = '{print $$2}')"

build:
	@docker build --force-rm --pull --tag $(IMAGE_NAME):$(IMAGE_TAG) .

purge:
	@docker image rm --force $(IMAGE_NAME):$(IMAGE_TAG)

run: build
	@docker run -it --rm --net host $(IMAGE_NAME):$(IMAGE_TAG)
