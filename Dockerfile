FROM composer

WORKDIR /app
RUN composer global require mcustiel/phiremock

ENTRYPOINT ["/tmp/vendor/mcustiel/phiremock/bin/phiremock", "-e", "/app/expectations", "-d"]
EXPOSE 8086