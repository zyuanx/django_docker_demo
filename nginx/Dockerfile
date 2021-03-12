FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/

RUN mkdir -p /var/www/code/static
CMD ["nginx", "-g", "daemon off;"]
