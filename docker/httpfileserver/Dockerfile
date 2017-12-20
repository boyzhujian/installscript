FROM golang:1.8

WORKDIR /go/src/app
COPY . .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go-wrapper install    # "go install -v ./..."
RUN mkdir /temproot          #we need one empty foler 
COPY ./temp/readme.txt /temproot
COPY ./temp/.ghs.yml /temproot     #you can define user privilege in .ghs.yml file
CMD ["go-wrapper", "run","--root=/temproot"] # ["app"]
