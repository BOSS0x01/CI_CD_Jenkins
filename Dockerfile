# Use a small nginx image and copy the static site into place
FROM nginx:stable-alpine

# Remove default nginx index if present (not strictly necessary)
# COPY will overwrite the file at the destination

# Copy index.html into the default nginx html folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (informational)
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
