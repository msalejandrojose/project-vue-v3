FROM nginx:1.22.1-alpine

ARG mode
ARG project_id

# Instalar Nginx
RUN apk add --no-cache openssl

# Copiar los archivos de configuración
COPY ./nginx/nginx.conf /etc/nginx/
COPY ./nginx/location-front.conf /etc/nginx/location-front.conf
COPY ./nginx/location-bo.conf /etc/nginx/location-bo.conf
COPY ./nginx/location-api.conf /etc/nginx/location-api.conf
COPY ./nginx/conf.d/server.conf /etc/nginx/conf.d/env.conf
COPY ./scripts ./scripts
COPY ./certs ./certs
RUN chmod +x /scripts -R
RUN dos2unix /scripts/*
RUN /scripts/certs.sh "${mode}" "${project_id}"

# Exponer el puerto 80 y 443
EXPOSE 80 433

# Comando para iniciar el servidor NGINX
CMD ["sh", "-c", "nginx -g 'daemon off;'"]