FROM registry:2.0
MAINTAINER Marco Monteiro <marco@neniu.org>

COPY config.yml /go/src/github.com/docker/distribution/cmd/registry/config.yml
