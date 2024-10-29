FROM openjdk:11-jre-slim

# Copy your app jar
COPY your-app.jar /app/your-app.jar

# Copy OpenTelemetry agent jar (assume you have the otel jar)
COPY opentelemetry-javaagent.jar /otel/opentelemetry-javaagent.jar

# Set up environment variable to enable/disable OTel
ENV ENABLE_OTEL="false"

# Add a script to conditionally run the OTel agent
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Set the script as the entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]


#!/bin/sh

# Check if the OTel agent should be enabled
if [ "$ENABLE_OTEL" = "true" ]; then
    echo "Starting application with OpenTelemetry agent..."
    java -javaagent:/otel/opentelemetry-javaagent.jar -jar /app/your-app.jar
else
    echo "Starting application without OpenTelemetry agent..."
    java -jar /app/your-app.jar
fi