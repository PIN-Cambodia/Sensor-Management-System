FROM nginx:1.10
ADD Docker/vhost.conf /etc/nginx/conf.d/default.conf