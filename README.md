# fboaventura/dckr-fiche

Docker instance to run a really small footprint web server, based on [caddy server](https://caddyserver.com).

It's usefull to server small sites, with static pages.  Also very good to go with other projects that needs a webserver. It may also be used to quickly serve files on a folder over the network.

## How to use

This instance is published at [Docker Hub](https://hub.docker.com/r/fboaventura/dckr-httpd/), so it's public available.  All you need to run this instance is:

```bash
$ docker run -d -v `pwd`:/app/www -p 8080:80 fboaventura/dckr-httpd
```

You can, of course, pass some custom values to fiche, in order to make it more prone to your usage.  The variables, and their defaults are:

```dockerfile
ENV DOMAIN "localhost"
ENV BASEDIR "/app/www"
ENV CONFDIR "/app/conf"
ENV PORT "80"
```

Once the instance is running, all you have to do is open a web browser and point it to `http://${DOMAIN}:8080`

