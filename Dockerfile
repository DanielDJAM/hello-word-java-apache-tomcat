  FROM tomcat:9.0
  LABEL maintainer="daniel@iespuerto.es"

  ARG WAR_FILE=target/*.war

  ADD ${WAR_FILE} /usr/local/tomcat/webapps/

  EXPOSE 8086
  CMD ["catalina.sh", "run"]
