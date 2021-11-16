PLATFORM=local

#.PHONY: bin/
all:
	@docker build . --target build --output bin/ --platform ${PLATFORM}

.PHONY: unit-test
unit-test:
	@docker build . --target unit-test

docker:
	docker build -f ./app/Dockerfile -t devconz .
