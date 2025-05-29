# Dockerfile simplificado para compilación de proyectos Java Spring Boot
FROM openjdk:11-jdk AS builder

# Instalación de herramientas necesarias
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Configuración del directorio de trabajo
WORKDIR /app

# Optimización de capas de Docker para caché de dependencias
COPY pom.xml .
RUN mvn dependency:go-offline

# Compilación de la aplicación
COPY src ./src
RUN mvn clean package -DskipTests

# Imagen final mínima para ejecución
FROM openjdk:11-jre
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

# Exposición de puertos
EXPOSE 8080

# Punto de entrada simplificado
ENTRYPOINT ["java", "-jar", "app.jar"]