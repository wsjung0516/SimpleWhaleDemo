
FROM nginx:alpine
COPY static /usr/share/nginx/html
EXPOSE 80:80
# LABEL maintainer = "usha.mandya@docker.com"
