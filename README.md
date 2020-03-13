![logo](logo.png)

Twidge (Twitter CLI) - Docker Image (Multiarch)
===============================================

[![latest release](https://img.shields.io/github/release/jaymoulin/docker-twidge.svg "latest release")](http://github.com/jaymoulin/docker-twidge/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/jaymoulin/twidge.svg)](https://hub.docker.com/r/jaymoulin/twidge/)
[![Docker stars](https://img.shields.io/docker/stars/jaymoulin/twidge.svg)](https://hub.docker.com/r/jaymoulin/twidge/)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/3Yu8ajd7W)
[![Become a Patron](https://badgen.net/badge/become/a%20patron/F96854 "Become a Patron")](https://patreon.com/jaymoulin)

(This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many desirable features yet to be added.)

THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

Installation
------------

```
docker run --rm -ti -v /path/to/your/.twidgerc:/root/.twidgerc jaymoulin/twidge setup
```

Then follow the instructions. This will create a key to identify your user

Usage
-----


## Help
```
docker run --rm -ti -v /path/to/your/.twidgerc:/root/.twidgerc jaymoulin/twidge --help
```

## Commands available
```
docker run --rm -ti -v /path/to/your/.twidgerc:/root/.twidgerc jaymoulin/twidge lscommands
```

Learn more on [Twidge documentation](https://github.com/jgoerzen/twidge/wiki)

Appendixes
---

### Install Docker

If you don't have Docker installed yet, you can do it easily in one line using this command
 
```
curl -sSL "https://gist.githubusercontent.com/jaymoulin/e749a189511cd965f45919f2f99e45f3/raw/0e650b38fde684c4ac534b254099d6d5543375f1/ARM%2520(Raspberry%2520PI)%2520Docker%2520Install" | sudo sh && sudo usermod -aG docker $USER
```
