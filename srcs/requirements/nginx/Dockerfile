FROM Alpine:latest

RUN apk update && apk upgrade

RUN apk add nginx openssh

RUN nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]