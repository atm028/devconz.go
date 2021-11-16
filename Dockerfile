FROM --platform=${BUILDPLATFORM} golang:alpine3.14 as base
RUN mkdir -p /go/github.com/devconz.go
COPY app/ /go/github.com/devconz.go/app

ENV CGO_ENABLED=0
WORKDIR /go/github.com/devconz.go
COPY go.* .
RUN go mod download
COPY . .

FROM base as build
ARG GOS
ARG GOARCH
RUN --mount=type=cache,target=/root/.cache/go-build GOS=${GOS} GOARCH=${GOARCH} go build -o ./ ./app/main.go

FROM base as unit-test
RUN --mount=type=cache,target=/root/.cache/go-build go test -v ./...
