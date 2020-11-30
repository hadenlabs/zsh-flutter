#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install flutter for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#

export FLUTTER_VERSION="1.22.4-stable"
FLUTTER_SRC_PATH=$(dirname "$0")
ZSH_PACKAGE_NAME="Flutter"

# shellcheck source=/dev/null
source "${FLUTTER_SRC_PATH}"/pkg/flutter/main.zsh

# shellcheck source=/dev/null
source "${FLUTTER_SRC_PATH}"/pkg/pub/main.zsh
