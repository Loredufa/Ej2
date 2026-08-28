FROM registry.access.redhat.com/ubi9/nodejs-20:latest

WORKDIR /opt/app-root/src

# Copy application source
COPY app.js ./
USER root
# Copy startup script to system path
COPY start.sh /usr/local/bin/start.sh

RUN chmod 0755 /usr/local/bin/start.sh
USER 1001
EXPOSE 8080

CMD ["/usr/local/bin/start.sh"]
