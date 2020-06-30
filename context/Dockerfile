# phlax/odoo
#
# VERSION       0.0.1

ARG BUILD_FROM=odoo

# Root stage
FROM $BUILD_FROM

MAINTAINER Ryan Northey <ryan@synca.io>

RUN apt update \
	&& apt install -y -qq --no-install-recommends net-tools \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
        && apt-get clean

HEALTHCHECK --interval=10s --timeout=1s --retries=5 \
	CMD netstat -plnt | grep 8069
