FROM golang:1.8-alpine

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

COPY . /go/src/app
RUN go-wrapper install
CMD ["go-wrapper", "run", "-addr=0.0.0.0:8080", "-dir=."]
