
FROM caddy:2.8.4-alpine

ENV DOMAIN "localhost"
ENV BASEDIR "/app/www"
ENV CONFDIR "/app/conf"
ENV PORT "80"

RUN mkdir -p /app/ssl /app/www /app/conf

ADD files/Caddyfile /app/conf/

CMD ["/usr/bin/caddy", "run", "--config", "/app/conf/Caddyfile"]

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="dckr-httpd" \
      org.label-schema.description="Quick Use HTTP Server." \
      org.label-schema.url="https://fboaventura.dev" \
      org.label-schema.vcs-url="https://github.com/fboaventura/dckr-httpd" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vendor="$VENDOR" \
      org.label-schema.version="$VERSION" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.author="$AUTHOR" \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="MIT"
