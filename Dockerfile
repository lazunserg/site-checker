FROM alpine:latest

RUN apk add --no-cache bash curl

WORKDIR /app
COPY check_sites.sh .

RUN chmod +x check_sites.sh

ENTRYPOINT ["./check_sites.sh"]
