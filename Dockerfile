FROM php:7.4-apache

RUN apt update && apt install -y git 
#RUN apt-get update
##RUN docker-php-ext-install mysqli && docker-php-ext-enable
RUN chown -R www-data:www-data /var/www/html
COPY . /var/www/html

RUN docker-php-ext-install mysqli


EXPOSE 80
CMD ["apache2-foreground"]















