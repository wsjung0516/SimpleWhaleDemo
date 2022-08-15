
FROM nginx:alpine
COPY static /usr/share/nginx/html
EXPOSE 3001:80
# LABEL maintainer = "usha.mandya@docker.com"
