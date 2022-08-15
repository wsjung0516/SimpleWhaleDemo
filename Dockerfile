
FROM nginx:alpine
COPY static /usr/share/nginx/html
# RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx","-g","daemon off"]
# LABEL maintainer = "usha.mandya@docker.com"
