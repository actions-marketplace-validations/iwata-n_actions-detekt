FROM openjdk:11

RUN curl -o /detekt.jar -sSLO https://github.com/detekt/detekt/releases/download/v1.20.0/detekt-cli-1.20.0-all.jar
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
