# Step 1: Use Nginx as the base image
FROM nginx:alpine

# Step 2: Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy website files into Nginx directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]


