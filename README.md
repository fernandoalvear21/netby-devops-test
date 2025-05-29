# Proyecto Demo DevOps con Spring Boot

## Descripción
Proyecto demostrativo que implementa una API REST con Spring Boot y un pipeline CI/CD completo usando GitHub Actions para despliegue en Azure VM.

## Tecnologías Clave
- **Backend**: Spring Boot 2.7.5 (Java 11)
- **Build**: Maven
- **CI/CD**: GitHub Actions
- **Infraestructura**: Azure VM

## Estructura del Proyecto
.
├── .github/
│   └── workflows/
│       ├── build.yml    # Compilación y tests
│       ├── deploy.yml   # Despliegue automatizado
│       ├── release.yml  # Creación de releases
│       ├── ci-cd.yml    # Pipeline general
│       └── sast.yml    # Security scanning
├── src/                # Código fuente
│   ├── main/
│   │   └── java/
│   │       └── com/
│   │           └── example/
│   │               └── demo/
│   │                   ├── DemoApplication.java
│   │                   └── DemoController.java
│   └── resources/  
│       └── application.properties
├── Dockerfile.builder  # Build optimizado
├── README.md           # Documentación
└── pom.xml             # Configuración Maven

## Tecnologías Utilizadas
- Java 11
- Spring Boot 2.7.5
- Maven
- GitHub Actions
- Azure VM
- Docker 

## Etapas del Pipeline CI/CD
1. **Compilación**: 
   - Build con Maven
   - Pruebas unitarias
   - Análisis estático de código (SAST)

2. **Empaquetado**:
   - Creación del JAR ejecutable
   - Generación de imagen Docker (opcional)

3. **Despliegue**:
   - Transferencia segura a Azure VM via SCP
   - Backup automático
   - Health checks post-instalación

4. **Verificación**:
   - Pruebas de integración
   - Monitoreo continuo

## Conceptos Clave Implementados
- **Infraestructura como Código**: Configuración reproducible de la VM
- **Entrega Continua**: Automatización completa del despliegue
- **Observabilidad**: Endpoints /health y métricas
- **Seguridad**: Escaneo de vulnerabilidades en el pipeline
- **Resiliencia**: Mecanismos de rollback automático

## Colaboración
- **Git Flow**: Uso de ramas feature/ y pull requests
- **Code Reviews**: Requisito para merge a main
- **Documentación**: Comentarios en código y README detallado

## Arquitectura
![Arquitectura](/docs/netby-project-arq.png)

## Autor
[@fernandoalvear21]
