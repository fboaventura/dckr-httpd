FROM busybox

LABEL maintainer "Frederico Freire Boaventura <frederico@boaventura.net>"
LABEL version "1.0"

ENV DOMAIN "localhost"
ENV BASEDIR "/app/www"
ENV PORT "80"

ADD files/caddy files/Caddyfile /app/

RUN mkdir -p /app/ssl /app/www

CMD /app/caddy -agree -log=stdout -conf=/app/Caddyfile -root=$BASEDIR
