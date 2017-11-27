FROM web
ENV DOWNLOAD_URL http://download.limesurvey.org/latest-stable-release/limesurvey2.72.5+171121.tar.gz
RUN yum -y install wget tar &&\
    wget $DOWNLOAD_URL &&\
    tar zxvf limesurvey2.72.5+171121.tar.gz &&\
    rm -f limesurvey2.72.5+171121.tar.gz &&\
    mv limesurvey/* /var/www/html/
RUN rm -rf limesurvey/ &&\
    chmod -R 775 /var/www/html/ &&\
    chmod -R 777 /var/www/html/tmp/ &&\
    chmod -R 777 /var/www/html/upload/ &&\
    chmod -R 777 /var/www/html/application/config/ &&\
    yum -y install php-imap
VOLUME /var/www/html
EXPOSE 80
