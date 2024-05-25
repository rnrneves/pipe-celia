FROM nginx
COPY index.html estilos.css /usr/share/nginx/html/
EXPOSE 80