# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your locally built Angular app into the Nginx web root
COPY dist/kickstart-angular /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf


# Expose default port
EXPOSE 80


