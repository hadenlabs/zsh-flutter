#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::install::post_install {
    if core::exists flutter; then
        return
    fi

    if ! core::exists brew; then
        message_info "${FLUTTER_MESSAGE_BREW}"
        return
    fi

    message_info "Installing Dependences for Flutter"
    brew install --HEAD usbmuxd
    brew link usbmuxd
    brew install --HEAD libimobiledevice
    brew install ideviceinstaller cocoapods ios-deploy
    pod setup
    message_success "Flutter Dependences Installed"
}
