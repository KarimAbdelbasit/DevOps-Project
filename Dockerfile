FROM centos:latest
MAINTAINER karim.abdelbasit2012@gmail.com
RUN yum install -y http \ zip\ unzip
Add https://www.free-css.com/assets/files/free-css-templates/download/page%20296/oxer.zip var/www/html/
WORKDIR /var/www/html/
RUN unzip oxer.zip
RUN cp -rvf oxer/* .
RUN rm -rf oxer oxer.zip
CMD [ "/usr/sbin/http", "-D", "FOREGROUND" ]
EXPOSE 80 
