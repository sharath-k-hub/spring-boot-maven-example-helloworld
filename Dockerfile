FROM openjdk:8
ADD  target/SpringBootMavenExample-1.3.5.RELEASE.war SpringBootMavenExample-1.3.5.RELEASE.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","SpringBootMavenExample-1.3.5.RELEASE.war"]
