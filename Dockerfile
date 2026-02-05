# Tomcat 10 use kar rahe hain kyunki aapka project Jakarta Servlet use karta hai
FROM tomcat:10.1-jdk17-openjdk-slim

# Purane default apps ko hatane ke liye (Optional but clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Aapki ROOT.war file ko Tomcat ke webapps folder mein copy karna
COPY ROOT.war /usr/local/tomcat/webapps/

# Port 8080 expose karna
EXPOSE 8080

# Tomcat start karne ki command
CMD ["catalina.sh", "run"]
