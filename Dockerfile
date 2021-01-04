FROM golang:1.15-alpine3.12
WORKDIR /usr/src/app
COPY hello.go .
# RUN go build -o hello .
RUN CGO_ENABLED=0 go build -ldflags "-s -w" -o hello
CMD ["./hello"]