#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install flutter for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

FLUTTER_VERSION="flutter_macos_v1.9.1+hotfix.6-stable"
FLUTTER_ROOT="$HOME/google/flutter"

plugin_dir=$(dirname "${0}":A)
# shellcheck source=/dev/null
source "${plugin_dir}"/src/helpers/messages.zsh

function flutter::purge {
    # clean path of flutter
    echo -e "${CLEAR}${LIGHT_GREEN}Clean flutter if exists${CLEAR}"
    [[ -e "${FLUTTER_ROOT}" ]] && rm -rf "${FLUTTER_ROOT}"
}

function flutter::install {
    flutter::purge
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Flutter${CLEAR}"
    local flutter_download
    flutter_download=https://storage.googleapis.com/flutter_infra/releases/stable/macos/${FLUTTER_VERSION}.zip
    wget -P "$HOME/google" -O flutter.zip ${flutter_download} && unzip -d "$HOME/google" flutter.zip
}

function flutter::dependences {
    brew install --HEAD usbmuxd
    brew link usbmuxd
    brew install --HEAD libimobiledevice
    brew install ideviceinstaller
    brew install cocoapods
    brew install ios-deploy
    pod setup
}


function flutter::load {
    [[ -e "$HOME/google/flutter" ]] && export FLUTTER_ROOT="${FLUTTER_ROOT}"
    [[ -e "$HOME/google/flutter/bin" ]] && export PATH="$PATH:$FLUTTER_ROOT/bin"
    [[ -e "$HOME/google/flutter/bin/cache/dart-sdk" ]] && export FLUTTER_DART_SDK="$FLUTTER_ROOT/bin/cache/dart-sdk"
    [[ -e "$HOME/google/flutter/bin/cache/dart-sdk/bin" ]] && export PATH="$PATH:$FLUTTER_DART_SDK/bin"
}

flutter::load

if [ ! -x "$(command which flutter)" ]; then
    flutter::install
    flutter::dependences
fi
