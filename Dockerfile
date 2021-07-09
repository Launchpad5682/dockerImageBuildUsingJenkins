FROM centos:latest

RUN yum install httpd -y

RUN yum install net-tools -y

RUN echo hello from Jenkins Docker Image Build > /var/www/html/index.html
