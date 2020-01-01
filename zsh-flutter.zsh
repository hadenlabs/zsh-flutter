#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install flutter for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
FLUTTER_DOWNLOAD_URL="https://storage.googleapis.com/flutter_infra/releases/stable"
FLUTTER_OSX="/macos/flutter_macos_v1.12.13+hotfix.5-stable.zip"
FLUTTER_LINUX="/linux/flutter_linux_v1.12.13+hotfix.5-stable.tar.xz"
FLUTTER_ROOT="${HOME}/google/flutter"

function flutter::purge {
    # clean path of flutter
    message_info "Clean flutter if exists"
    [ -e "${FLUTTER_ROOT}" ] && rm -rf "${FLUTTER_ROOT}"
}

function flutter::install::osx {
    message_info "Installing Flutter"
    local flutter_download
    flutter_download="${FLUTTER_DOWNLOAD_URL}/${FLUTTER_OSX}"
    wget -P "${HOME}/google" -O flutter.zip ${flutter_download} && unzip -d "${HOME}/google" flutter.zip
    message_success "Flutter Installed"
}

function flutter::install::linux {
    message_info "Installing Flutter"
    local flutter_download
    flutter_download="${FLUTTER_DOWNLOAD_URL}/${FLUTTER_LINUX}"
    wget -qO- ${flutter_download} | tar xvz - -C "${HOME}/google"
    message_success "Flutter Installed"
}

function flutter::install::factory {
    flutter::dependences
    message_info "Installing Flutter"
    case "${OSTYPE}" in
    darwin*)
        flutter::install:osx
        ;;
    linux*)
        flutter::install::linux
      ;;
    esac
    message_success "Flutter Installed"
}

function flutter::post_install::factory {
    message_info "Post Installing Flutter"
    case "${OSTYPE}" in
    darwin*)
        flutter::post_install:osx
        ;;
    linux*)
        flutter::post_install::linux
      ;;
    esac
    message_success "Post Installed Installed"
}

function flutter::post_install::linux {
    message_info "Installing Dependences for Flutter"
    message_info "Installed Dependences for Flutter"
}

function flutter::post_install::osx {
    if ! type -p flutter > /dev/null; then
        message_info "Installing Dependences for Flutter"
        brew install --HEAD usbmuxd
        brew link usbmuxd
        brew install --HEAD libimobiledevice
        brew install ideviceinstaller
        brew install cocoapods
        brew install ios-deploy
        pod setup
        message_success "Flutter Dependences Installed"
    else
        message_info "Not Found Brew, please install brew or use luismayta/zsh-brew"
    fi
}

function flutter::dependences {
    message_info "Validating Dependences for Flutter"
    if ! type -p curl > /dev/null; then
        message_warning "Is neccesary get curl"
    fi

    if ! type -p git > /dev/null; then
        message_warning "Is neccesary get git"
    fi

    if ! type -p wget > /dev/null; then
        message_warning "Is neccesary get wget"
    fi

    if ! type -p unzip > /dev/null; then
        message_warning "Is neccesary get unzip"
    fi

    if ! type -p which > /dev/null; then
        message_warning "Is neccesary get which"
    fi
    message_success "Validated Dependences for Flutter"
}

function flutter::load {
    export PATH="${PATH}:${FLUTTER_ROOT}/bin"
    path_append "${FLUTTER_ROOT}/bin"
    [ -e "${FLUTTER_ROOT}/bin/cache/dart-sdk" ] && export FLUTTER_DART_SDK="${FLUTTER_ROOT}/bin/cache/dart-sdk"
    export PATH="${PATH}:${FLUTTER_DART_SDK}/bin"
}

flutter::load

if ! type -p flutter > /dev/null; then
    flutter::install::factory
    flutter::post_install::factory
fi
