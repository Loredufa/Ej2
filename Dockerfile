FROM registry.access.redhat.com/ubi9/nodejs-20:latest

WORKDIR /opt/app-root/src

# Copy application source
COPY app.js ./

# Copy startup script to system path
COPY start.sh /usr/local/bin/start.sh

USER 1001

# Fix permissions on startup script
# EJERCICIO: este RUN falla. Encontra por que y corregi el Dockerfile.
RUN chmod 0755 /usr/local/bin/start.sh

EXPOSE 8080

CMD ["/usr/local/bin/start.sh"]
