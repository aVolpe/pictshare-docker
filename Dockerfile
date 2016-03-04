FROM ishakuta/docker-nginx-php5
MAINTAINER Arturo Volpe <arturovolpe@gmail.com>

RUN apt-get update && apt-get install -y php5-gd

WORKDIR /opt
RUN curl -O https://codeload.github.com/chrisiaut/pictshare/zip/master

RUN apt-get install -y unzip

RUN unzip master
RUN mv pictshare-master pictshare && rm master

RUN apt-get install -y php5-fpm

WORKDIR /opt/pictshare
RUN cp inc/example.config.inc.php inc/config.inc.php
RUN chmod +x bin/ffmpeg

ADD pictshare.conf /etc/nginx/sites-available/default
ADD pictshare.conf /etc/nginx/sites-enabled/default

RUN chown -R www-data:www-data /opt/pictshare

EXPOSE 80

CMD service php5-fpm start && nginx
