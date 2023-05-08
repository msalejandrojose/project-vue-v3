FROM node:18.16-alpine

ARG mode
ARG project_id

# Instalar Nginx
RUN apk add --no-cache nginx;
RUN apk add --no-cache openssl

# Copiar los archivos de configuración
COPY ./nginx/nginx.conf /etc/nginx/
COPY ./nginx/location.conf /etc/nginx/location.conf
COPY ./nginx/conf.d/server.conf /etc/nginx/conf.d/env.conf

# Exponer el puerto 8000
EXPOSE 8080

# Comando para iniciar el servidor NGINX
CMD ["sh", "-c", "cd /usr/share/nginx/project/app && npm i && npm run build && nginx -g 'daemon off;'"]