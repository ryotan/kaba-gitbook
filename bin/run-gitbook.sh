#!/bin/sh -xe

cd "${WORKDIR}"
gitbook install \
  && gitbook "$1"

chown -R "$(stat -c '%u:%g' "${WORKDIR}")" "${WORKDIR}"
