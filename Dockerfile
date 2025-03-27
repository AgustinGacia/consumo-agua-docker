FROM nginx:alpine
# Copia TODO el contenido de la carpeta Build (incluyendo subcarpetas)
COPY ./unity/Build /usr/share/nginx/html
# Exponemos el puerto 80 (HTTP)
EXPOSE 80