.PHONY: build-no-cache

build-no-cache:
	docker build . --no-cache -t swi-prolog:latest
