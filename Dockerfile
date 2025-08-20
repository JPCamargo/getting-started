
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/*.jar /app/
COPY target/quarkus-app/quarkus/ /app/quarkus/
COPY target/quarkus-app/app/ /app/app/
EXPOSE 8080
CMD ["java", "-jar", "/app/quarkus-run.jar"]
