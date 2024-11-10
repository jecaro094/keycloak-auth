# Use the official Keycloak image as the base image
FROM quay.io/keycloak/keycloak:latest

# Set environment variables to configure Keycloak
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Expose the necessary port (HTTP port for Keycloak)
EXPOSE 8080

# Set the entry point for the Keycloak server
ENTRYPOINT [ "/opt/keycloak/bin/kc.sh", "start-dev" ]