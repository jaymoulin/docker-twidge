> [!CAUTION]
> As-of 2021, this product does not have a free support team anymore. If you want this product to be maintained, please support my work.
 
> [!NOTE]
> (This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many  desirable features yet to be added.)
 
> [!TIP]
> THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

![logo](logo.png)

Twidge (Twitter CLI) - Docker Image (Multiarch)
===============================================

[![latest release](https://img.shields.io/github/release/jaymoulin/docker-twidge.svg "latest release")](http://github.com/jaymoulin/docker-twidge/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/jaymoulin/twidge.svg)](https://hub.docker.com/r/jaymoulin/twidge/)
[![Docker stars](https://img.shields.io/docker/stars/jaymoulin/twidge.svg)](https://hub.docker.com/r/jaymoulin/twidge/)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/jaymoulin)
[![Buy me a coffee](https://ko-fi.com/img/githubbutton_sm.svg "Buy me a coffee")](https://www.ko-fi.com/jaymoulin)

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

