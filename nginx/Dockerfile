FROM nginx:latest
# 添加配置文件
COPY ./nginx.conf /etc/nginx/conf.d/


RUN rm /etc/nginx/conf.d/default.conf \
 && mkdir -p /usr/share/nginx/html/static \
 && mkdir -p /usr/share/nginx/html/media \
 && mkdir -p /usr/share/nginx/ssl

# 关闭守护模式
CMD ["nginx", "-g", "daemon off;"]
