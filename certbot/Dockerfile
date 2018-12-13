FROM alpine:latest

RUN apk --update --no-cache upgrade
RUN apk add --no-cache tini nginx python
RUN apk add --no-cache py-pip gcc python-dev musl-dev libffi-dev openssl-dev

RUN pip install --upgrade pip
RUN pip install virtualenv 'idna<2.8,>=2.5' certbot-nginx

RUN mkdir /run/nginx && touch /run/nginx/nginx.pid

COPY proxy.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY index.html /var/www/html/index.html

COPY certbot_init.sh /root/certbot_init.sh
RUN chmod +x /root/certbot_init.sh

VOLUME [ "/etc/letsencrypt/" ]
VOLUME [ "/etc/nginx/" ]
VOLUME [ "/var/www/html" ]

EXPOSE 80
EXPOSE 443

ENTRYPOINT [ "/sbin/tini", "--" ]
CMD [ "nginx", "-g", "daemon off;" ]
