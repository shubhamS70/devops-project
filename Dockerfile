# Use a lightweight Nginx web server image
FROM nginx:alpine

# Copy index.html to the default nginx html folder
COPY index.html /usr/share/nginx/html/index.html
