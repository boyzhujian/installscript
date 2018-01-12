# build stage
FROM golang:alpine AS build-env
ADD . /src
RUN cd /src && sh build.sh

# final stage
FROM alpine
WORKDIR /app
COPY --from=build-env /src/goapp/dist/gohttpserver-linux-amd64  /app/
ENTRYPOINT ./gohttpserver-linux-amd64
