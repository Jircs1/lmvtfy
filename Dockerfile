# Written against Docker v1.5.0
FROM dockerfile/java
MAINTAINER Chris Rebert <code@rebertia.com>

WORKDIR /
USER daemon

ADD target/scala-2.11/lmvtfy-assembly-1.0.jar /app/server.jar

CMD ["java", "-jar", "/app/server.jar", "8080"]
EXPOSE 8080
