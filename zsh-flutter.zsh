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
FLUTTER_VERSION="flutter_macos_v1.5.4-hotfix.2-stable"

function flutter::install {
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Flutter${CLEAR}"
    wget -P "$HOME/.other" -O flutter.zip https://storage.googleapis.com/flutter_infra/releases/stable/macos/${FLUTTER_VERSION}.zip && unzip -d "$HOME/.other" flutter.zip

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
    [[ -e "$HOME/.other/flutter" ]] && export FLUTTER_ROOT="$HOME/.other/flutter"
    [[ -e "$HOME/.other/flutter/bin" ]] && export PATH="$PATH:$FLUTTER_ROOT/bin"
    [[ -e "$HOME/.other/flutter/bin/cache/dart-sdk/" ]] && export FLUTTER_DART_SDK="$FLUTTER_ROOT/bin/cache/dart-sdk/"
}

flutter::load

if (( ! $+commands[flutter] )); then
    flutter::install
    flutter::dependences
fi
