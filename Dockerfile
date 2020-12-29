FROM golang:1.15-alpine3.12
WORKDIR /usr/src/app
COPY hello.go .
RUN go build -o hello .
CMD ["./hello"]