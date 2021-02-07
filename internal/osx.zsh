#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::install::post_install {
    if type -p flutter > /dev/null; then
        return
    fi

    if ! type -p brew > /dev/null; then
        message_info "${FLUTTER_MESSAGE_BREW}"
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
