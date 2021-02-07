#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export GOOGLE_ROOT="${HOME}/google"
export FLUTTER_ROOT="${GOOGLE_ROOT}/flutter"
export FLUTTER_ROOT_BIN="${FLUTTER_ROOT}/bin"
export FLUTTER_DART_SDK="${FLUTTER_ROOT_BIN}/cache/dart-sdk"
export FLUTTER_DART_SDK_BIN="${FLUTTER_DART_SDK}/bin"

export FLUTTER_DOWNLOAD_URL="https://storage.googleapis.com/flutter_infra/releases/stable"
export FLUTTER_VERSION="1.22.6-stable"
export FLUTTER_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export FLUTTER_PACKAGE_NAME=flutter
export FLUTTER_PACKAGES=(
    github.com/hairyhenderson/gomplate/v3/cmd/gomplate
)

export PUB_BIN_PATH="${HOME}/.pub-cache/bin"

export PUB_PACKAGES=(
    webdev
    stagehand
)
