FROM registry:2 AS registry

FROM shoothzj/base

COPY --from=registry /etc/docker/registry/config.yml /opt/sh/registry/config.yml

COPY --from=registry /bin/registry /opt/sh/registry/registry

ENV REGISTRY_HOME /opt/sh/registry

RUN ln -s /opt/sh/registry/registry /usr/bin/registry

WORKDIR /opt/sh/registry
