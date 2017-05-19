#!/bin/sh -xe

cd "${WORKDIR}"
gitbook install \
  && gitbook "$1"
