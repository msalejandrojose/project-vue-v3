# Imagen base
#FROM node:14.17.0-alpine3.13

# Copiar los archivos de la aplicación Vue.js
#COPY ../../app /usr/share/nginx/project/app

# Establecer el directorio de trabajo
#WORKDIR /usr/share/nginx/project/app

# Instalar las dependencias
#RUN npm install && npm run build

# Imagen base para NGINX
FROM nginx:1.21.1-alpine

# Copiar los archivos de configuración
COPY ./nginx/nginx.conf /etc/nginx/
COPY ./nginx/location.conf /etc/nginx/location.conf
COPY ./nginx/conf.d/server.conf /etc/nginx/conf.d/env.conf

# Exponer el puerto 80
EXPOSE 80 433

# Comando para iniciar el servidor NGINX
CMD ["nginx", "-g", "daemon off;"]