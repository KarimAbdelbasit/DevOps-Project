FROM rockylinux:8
LABEL maintainer="karim.abdelbasit2012@gmail.com"

# تثبيت الحزم المطلوبة
RUN yum install -y httpd zip unzip && yum clean all

# تنزيل وفك ضغط القالب
RUN curl -o /var/www/html/oxer.zip https://www.free-css.com/assets/files/free-css-templates/download/page%20296/oxer.zip && \
    cd /var/www/html/ && \
    unzip oxer.zip && \
    cp -rvf oxer/* . && \
    rm -rf oxer oxer.zip

# إعداد العمل
WORKDIR /var/www/html/

# تشغيل خادم Apache في الوضع الأمامي
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# فتح المنفذ 80
EXPOSE 80
