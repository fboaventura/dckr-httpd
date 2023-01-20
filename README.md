<center>

[![Docker Stars](https://img.shields.io/docker/stars/fboaventura/dckr-httpd.svg)](https://hub.docker.com/r/fboaventura/dckr-httpd)
![Docker Pulls](https://img.shields.io/docker/pulls/fboaventura/dckr-httpd)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/fboaventura/dckr-httpd)
![Docker Automated build](https://img.shields.io/docker/automated/fboaventura/dckr-httpd)

![GitHub top language](https://img.shields.io/github/languages/top/fboaventura/dckr-httpd)
[![GitHub forks](https://img.shields.io/github/forks/fboaventura/dckr-httpd)](https://github.com/fboaventura/dckr-httpd/network)
[![GitHub stars](https://img.shields.io/github/stars/fboaventura/dckr-httpd)](https://github.com/fboaventura/dckr-httpd/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/fboaventura/dckr-httpd)](https://github.com/fboaventura/dckr-httpd/issues)

[![GitHub license](https://img.shields.io/github/license/fboaventura/dckr-httpd)](https://github.com/fboaventura/dckr-httpd/blob/master/LICENSE)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Ffboaventura%2Fdckr-httpd.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Ffboaventura%2Fdckr-httpd?ref=badge_shield)

</center>

# fboaventura/dckr-httpd

Docker instance to run a small footprint web server, based on [caddy server](https://caddyserver.com).

It's useful to serve small sites, with static pages.  Also very good to go with other projects that needs a webserver. It may also be used to quickly serve files on a folder over the network.

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
