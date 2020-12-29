FROM golang:1.15

WORKDIR /usr/src/app

COPY . .

RUN go build -o hello

CMD ["./hello"]