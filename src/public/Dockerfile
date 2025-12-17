#Frontend Dockerfile

#Using Nginx to host web server
FROM nginx:stable-alpine

#Remove default nginx config file - only for if I change app to use SSL instead of HTTP
# RUN rm -rf /etc/nginx/conf.d/default.conf

# #Copy custom nginx config file, same as above
# COPY default.conf /etc/nginx/conf.d

#Copy build files from app to static folder
COPY ../. /usr/share/nginx/html

EXPOSE 80

