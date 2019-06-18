FROM ubuntu:latest
#MAINTAINER JCD "jcd717@outlook.com"

LABEL MAINTAINER="JCD <jcd717@outlook.com>" \
    description="test" \
    author="Mathieu JADEAU"

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ARG hbs=3
ENV HEARTBEATSTEP $hbs

#information de port réseau utile
#EXPOSE 1234

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]

