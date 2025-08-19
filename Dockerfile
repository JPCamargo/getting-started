FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/*.jar /app/
CMD ["java", "-jar", "/app/quarkus-run.jar"]