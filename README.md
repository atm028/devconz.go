## Motivation
Devconz is template of development environment for Golang in Docker container. Was motivated with getting the errors with golang developemnt environment after the update my mac to the latest os Mavericks.

The template provide support:
* build the application for native architecture
* build the application as Docker container
* execute unit tests
* support linter
* support CD/CI

## Usage
* make all - make everything
* make PLATFORM=darwin/amd64 - build for specific platform, mac os in this example
* make unit-test - execute unit tests
* make lint - run linter
* make docker - build a Docker image with the application