FROM node:18.16-alpine

# Instalar Nginx
RUN apk add --no-cache nginx;

# Copiar los archivos de configuración
COPY ./nginx/nginx.conf /etc/nginx/
COPY ./nginx/location.conf /etc/nginx/location.conf
COPY ./nginx/conf.d/server.conf /etc/nginx/conf.d/env.conf
#
# Exponer el puerto 80
EXPOSE 80 433

# Comando para iniciar el servidor NGINX
CMD ["nginx", "-g", "daemon off;"]