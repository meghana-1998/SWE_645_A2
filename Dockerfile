FROM tomcat:latest

# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your index.html to the Tomcat webapps directory
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

# Expose port 8080 to allow external access
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
