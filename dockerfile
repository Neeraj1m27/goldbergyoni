FROM ubuntu:18.04
RUN apt-get update
RUN  apt-get install apache2 -y
WORKDIR /var/www/html
RUN rm *
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/medinova.zip /var/www/html/
RUN apt-get install unzip
RUN unzip medinova.zip
RUN mv /var/www/html/medinova-html/* /var/www/html
RUN service apache2 start
CMD service apache2 start
