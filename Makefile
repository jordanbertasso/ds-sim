.PHONY: build stop run logs

build:
	docker build -t jordanbertasso/ds-server .

stop:
	docker stop -t 0 ds-server && docker container rm ds-server

run:
	$(MAKE) stop; \
	$(MAKE) build; \
	docker run --init --name ds-server -d -p 50000:50000 jordanbertasso/ds-server

logs:
	docker logs -f ds-server

