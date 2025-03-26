# Usamos una imagen ligera de Nginx
FROM nginx:alpine

# Copiamos los archivos del build WebGL de Unity
COPY ./Build /usr/share/nginx/html

# Exponemos el puerto 80 (HTTP)
EXPOSE 80