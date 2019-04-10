FROM golang: 1.11

WORKDIR $GOPATH/src/github.com/Brendapl/DockerChat

COPY ./client .

RUN go get -d -v ./...
RUN go install -v -/...

EXPOSE 8080

CMD["DockerChat"]
