
FROM golang:1.8    #https://hub.docker.com/_/golang/    this docker can be run every go project the same without change anything.

WORKDIR /go/src/app
COPY . .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go-wrapper install    # "go install -v ./..."

CMD ["go-wrapper", "run"] # ["app"]
