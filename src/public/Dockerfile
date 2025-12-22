#Frontend Dockerfile

#Using Nginx to host web server
FROM nginx:stable-alpine

COPY . /usr/share/nginx/html

#custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]