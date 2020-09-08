FROM openjdk:13

# time zone
ENV TZ Asia/Tokyo


COPY build/libs/my-project-0.0.1-SNAPSHOT.jar /usr/local/webapps/my-project.jar
RUN chmod 775 /usr/local/webapps/my-project.jar

EXPOSE 80 

ENTRYPOINT ["java", "-jar", "-Dserver.port=80", "/usr/local/webapps/my-project.jar"]
