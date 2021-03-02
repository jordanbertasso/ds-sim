.PHONY: build stop run logs

build:
	docker build -t ds-server .

stop:
	docker stop -t 0 ds-server && docker container rm ds-server

run:
	$(MAKE) stop; \
	$(MAKE) build; \
	docker run --name ds-server -d -p 50000:50000 ds-server

logs:
	docker logs -f ds-server

