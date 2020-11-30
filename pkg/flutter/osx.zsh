#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

FLUTTER_FILE="macos/flutter_macos_${FLUTTER_VERSION}.zip"

function flutter::install {
    message_info "Installing Flutter"
    local flutter_download
    flutter_download="${FLUTTER_DOWNLOAD_URL}/${FLUTTER_FILE}"
    wget -P "${HOME}/google" -O flutter.zip "${flutter_download}" && unzip -d "${HOME}/google" flutter.zip || return
    message_success "Flutter Installed"
}

function flutter::install::after {
    if type -p flutter > /dev/null; then
        return
    fi

    if ! type -p brew > /dev/null; then
        message_info "Not Found Brew, please install brew or use luismayta/zsh-brew"
        return
    fi

    message_info "Installing Dependences for Flutter"
    brew install --HEAD usbmuxd
    brew link usbmuxd
    brew install --HEAD libimobiledevice
    brew install ideviceinstaller
    brew install cocoapods
    brew install ios-deploy
    pod setup
    message_success "Flutter Dependences Installed"
}
