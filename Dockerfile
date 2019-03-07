FROM golang:1.12-alpine

RUN apk update && apk add --no-cache git

WORKDIR $GOPATH/src/github.com/ggilmore/docker-trust-test
COPY . .

RUN go build -o /go/bin/docker-trust-test

ENTRYPOINT [ "/go/bin/docker-trust-test" ]
