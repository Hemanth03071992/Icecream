FROM centos:latest
MAINTAINER "Hemanthsarikonda58@gmail.com"
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/free-css-templates/page279/icream.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip icecream.zip
RUN cp -rvf icecream/* .
RUN rm -rf icecream icecream.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
