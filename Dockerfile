FROM registry.access.redhat.com/ubi9/nodejs-20:latest
USER root
WORKDIR /opt/app-root/src

# Copy application source
COPY app.js ./ &&\
     start.sh /usr/local/bin/start.sh

RUN chmod 0755 /usr/local/bin/start.sh
USER 1001
EXPOSE 8080

CMD ["/usr/local/bin/start.sh"]
