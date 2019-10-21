FROM nginx
RUN apt-get update
RUN apt-get install -y apache2-utils
RUN rm /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d
COPY .htpasswd /etc/nginx
