.PHONY: build stop run logs

build:
	docker build -t jordanbertasso/ds-sim .

stop:
	docker stop -t 0 ds-sim && docker container rm ds-sim

run:
	$(MAKE) stop; \
	$(MAKE) build; \
	docker run --init --name ds-sim -d -p 50000:50000 jordanbertasso/ds-sim

logs:
	docker logs -f ds-sim

