FROM alpine/git:2.47.1 AS builder

WORKDIR /app

RUN git clone https://github.com/lizhipay/acg-faka.git
RUN cd acg-faka && echo "$(git rev-parse HEAD)" > /app/git-commit-id.txt

FROM caddy:2.8.4-alpine

WORKDIR /www

COPY --from=builder /app/acg-faka/assets /www/assets
COPY --from=builder /app/git-commit-id.txt /www/
COPY ./config.json /etc/caddy/config.json

EXPOSE 80

CMD ["caddy", "run", "--config", "/etc/caddy/config.json"]