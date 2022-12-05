FROM registry:2 AS registry

FROM shoothzj/base

COPY --from=registry /etc/docker/registry/config.yml /opt/registry/config.yml

COPY --from=registry /bin/registry /opt/registry/registry

ENV REGISTRY_HOME /opt/registry

RUN ln -s /opt/registry/registry /usr/bin/registry

WORKDIR /opt/registry
