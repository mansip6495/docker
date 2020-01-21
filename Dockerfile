FROM ubuntu
RUN apt update -y && apt install -y apache2
COPY conf/000-default.conf /etc/apache2/sites-enabled
RUN mkdir -p /var/www/html/apache2/
COPY static_page/index.html /var/www/html/apache2 
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
