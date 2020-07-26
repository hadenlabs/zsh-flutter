#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install flutter for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#

export FLUTTER_VERSION="1.17.5-stable"
FLUTTER_SRC_PATH=$(dirname "$0")

# shellcheck source=/dev/null
source "${FLUTTER_SRC_PATH}"/pkg/flutter/main.zsh

# shellcheck source=/dev/null
source "${FLUTTER_SRC_PATH}"/pkg/pub/main.zsh

flutter::load

pub::load

if ! type -p flutter > /dev/null; then
    flutter::install
    flutter::post_install
fi

if ! type -p pub > /dev/null; then
    pub::install
    pub::post_install
fi
