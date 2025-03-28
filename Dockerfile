FROM golang:1.22.5
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o myapp .
COPY tracker.db .
EXPOSE 8080
CMD ["./myapp"]

# я правда не понял что вы хотите от меня, думаю сейчас все ок? пришлось обращатьсяз помощтю, чтоб перевести то, что вы сказали