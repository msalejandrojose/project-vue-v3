FROM node:18.16-alpine

ARG mode
ARG project_id

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar el servidor NGINX
CMD ["sh", "-c", "cd /usr/share/nginx/project/api && npm i && npm install -g nodemon && nodemon index.js"]