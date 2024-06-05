FROM alpine:latest

RUN apk update && \
apk add apache2

RUN chown apache /var/www/localhost/htdocs && chmod a+r /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
