FROM alpine:lastest

RUN apk update && \
apk add apache2

copy index.html /var/www/localhost/htdocs/
RUN chown apache /var/www/localhost/htdocs && chmod a+r /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
