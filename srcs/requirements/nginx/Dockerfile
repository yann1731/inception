FROM alpine:3.15

RUN apk update && apk add nginx \
    openssl

COPY config/nginx.conf /etc/nginx/http.d/default.conf

COPY config/entrypoint.sh ./entrypoint.sh

RUN delgroup www-data && \
    addgroup --system --gid 1000 www-data && \
    adduser -S --uid 1000 www-data

RUN chmod +x ./entrypoint.sh

EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
