# Use the official Nginx base image
FROM nginx:alpine
WORKDIR /gs_devops
# Copy the HTML files to the Nginx document root directory
COPY gs_devops/ /usr/share/nginx/html

# Create a directory for the volume
RUN mkdir /data

# Set the volume to the /data directory
VOLUME /data

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
