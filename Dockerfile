# Schritt 1: Verwende ein offizielles OpenJDK-Image als Basis
FROM openjdk:17-jdk-alpine

# Schritt 2: Erstelle ein Verzeichnis für die Anwendung
WORKDIR /app

# Schritt 3: Kopiere das JAR-File in das Image
COPY target/withings-garmin-app.jar app.jar

# Schritt 4: Exponiere den Port, auf dem die Spring Boot-Anwendung läuft
EXPOSE 8080

# Schritt 5: Definiere den Befehl, um die Anwendung zu starten
CMD ["java", "-jar", "app.jar"]
