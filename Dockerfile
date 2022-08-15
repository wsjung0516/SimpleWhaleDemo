
FROM nginx:alpine
COPY static /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off"]
# LABEL maintainer = "usha.mandya@docker.com"
