FROM nginx:alpine
ADD . /usr/share/nginx/html/
ADD run.sh /run.sh
CMD ["/run.sh"]
