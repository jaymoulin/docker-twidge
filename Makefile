VERSION ?= debian/1.1.1
CACHE ?= --no-cache=1
FULLVERSION ?= debian/1.1.1
archs ?= amd64 arm32v5 arm32v7 arm64v8 i386

.PHONY: all build publish latest
all: build publish latest
qemu-arm-static:
	cp /usr/bin/qemu-arm-static .
qemu-aarch64-static:
	cp /usr/bin/qemu-aarch64-static .
build: qemu-aarch64-static qemu-arm-static
	$(foreach arch,$(archs), \
		cat Dockerfile | sed "s/FROM debian:stable-slim/FROM ${arch}\/debian:stable-slim/g" > .Dockerfile; \
		docker build -t jaymoulin/twidge:${VERSION}-$(arch) -t ghcr.io/jaymoulin/twidge:${VERSION}-$(arch) -f .Dockerfile ${CACHE} .;\
	)
publish:
	docker push jaymoulin/twidge -a
	docker push ghcr.io/jaymoulin/twidge -a
	cat manifest.yml | sed "s/\$$VERSION/${VERSION}/g" > manifest.yaml
	cat manifest.yaml | sed "s/\$$FULLVERSION/${FULLVERSION}/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
	cat manifest.yaml | sed "s/jaymoulin/ghcr.io\/jaymoulin/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
latest:
	FULLVERSION=latest VERSION=${VERSION} make publish
