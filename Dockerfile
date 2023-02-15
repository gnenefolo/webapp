FROM ubuntu
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git
ENTRYPOINT [ "/usr/sbin/nginx", "-g","daemon off;" ]