FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
COPY index.html /usr/share/nginx/html/
