# Step 1: Use Nginx base image
FROM nginx:alpine

# Step 2: Copy website files to Nginx default folder
COPY . /usr/share/nginx/html

# Step 3: Expose port 8080
EXPOSE 8080

# Step 4: Run Nginx
CMD ["nginx", "-g", "daemon off;"]
