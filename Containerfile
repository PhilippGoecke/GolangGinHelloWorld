FROM docker.io/golang:1.24-bookworm

WORKDIR /gin

COPY main.go .

RUN go mod init github.com/philippgoecke/GolangGinHelloWorld \
  && go get github.com/gin-gonic/gin
RUN go build -o main main.go

CMD ["./main"]
