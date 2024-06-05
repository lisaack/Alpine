# Utilizamos la imagen base Alpine de Docker

FROM alpine:latest

# Actualizamos el repositorio e instalamos Apache

RUN apk update && \

apk add apache2

# Copiamos el archivo index.html desde el directorio actual al directorio de documentos de Apache en el contenedor

COPY index.html /var/www/localhost/htdocs/

RUN chown apache /var/www/localhost/htdocs/ && chmod a+r /var/www/localhost/htdocs/

# Exponemos el puerto 80 para que Apache pueda recibir solicitudes HTTP

EXPOSE 80

# Iniciamos Apache en primer plano cuando se inicie el contenedor

CMD ["httpd", "-D", "FOREGROUND"]
