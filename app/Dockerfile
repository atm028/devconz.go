FROM golang:1.16.4

RUN mkdir -p /go/github.com/devconz.go
COPY ./ /go/github.com/devconz.go/

ENV CGO_ENABLED=0
WORKDIR /go/github.com/devconz.go

RUN go build -o ./devconz ./app/main.go
RUN cp -rf ./devconz /usr/local/bin/devconz

WORKDIR /
RUN rm -rf /go

ENTRYPOINT ["devconz", "hello", "world"]
