#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install flutter for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

LIGHT_GREEN='\033[1;32m'
CLEAR='\033[0m'
FLUTTER_VERSION="flutter_macos_v1.7.8+hotfix.4-stable"

function flutter::install {
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Flutter${CLEAR}"
    wget -P "$HOME/google" -O flutter.zip https://storage.googleapis.com/flutter_infra/releases/stable/macos/${FLUTTER_VERSION}.zip && unzip -d "$HOME/google" flutter.zip

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
    [[ -e "$HOME/google/flutter" ]] && export FLUTTER_ROOT="$HOME/google/flutter"
    [[ -e "$HOME/google/flutter/bin" ]] && export PATH="$PATH:$FLUTTER_ROOT/bin"
    [[ -e "$HOME/google/flutter/bin/cache/dart-sdk/" ]] && export FLUTTER_DART_SDK="$FLUTTER_ROOT/bin/cache/dart-sdk/"
    [[ -e "$HOME/google/flutter/bin/cache/dart-sdk/bin" ]] && export PATH="$PATH:$FLUTTER_DART_SDK/bin"
}

flutter::load

if (( ! $+commands[flutter] )); then
    flutter::install
    flutter::dependences
fi
