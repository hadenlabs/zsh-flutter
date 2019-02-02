#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install flutter for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

function install_flutter {
    wget -P "$HOME/.flutter" -O flutter.zip https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.0.0-stable.zip && unzip -d "$HOME/.flutter" flutter.zip

}

function load_flutter {
    [[ -e "$HOME/.flutter/flutter/bin" ]] && export PATH="$PATH:$HOME/.flutter/flutter/bin"
}

load_flutter

if (( ! $+commands[flutter] )); then
    install_flutter
fi
