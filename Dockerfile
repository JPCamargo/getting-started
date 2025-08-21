
# Usa a imagem base do Eclipse Temurin com JDK 17
FROM eclipse-temurin:17-jdk

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia as dependências da aplicação Quarkus para o container
COPY target/quarkus-app/lib/ /app/lib/

# Copia o arquivo JAR principal da aplicação para o container
COPY target/quarkus-app/*.jar /app/

# Copia os arquivos internos do Quarkus necessários para execução
COPY target/quarkus-app/quarkus/ /app/quarkus/

# Copia os recursos da aplicação (classes compiladas, arquivos estáticos, etc.)
COPY target/quarkus-app/app/ /app/app/

# Informa ao Docker que a aplicação escuta na porta 8080
EXPOSE 8080

# Comando que será executado ao iniciar o container
CMD ["java", "-jar", "/app/quarkus-run.jar"]
