#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::flutter::post_install {
    if ! core::exists brew; then
        message_info "${FLUTTER_MESSAGE_BREW}"
        return
    fi

    message_info "Installing Dependences for Flutter"

    gem install cocoapods

    brew install --HEAD usbmuxd
    brew link usbmuxd
    brew install --HEAD libimobiledevice
    brew install ideviceinstaller cocoapods ios-deploy
    pod setup

    touch "${ANDROID_FILE_REPOSITORIES}"

    [ "$(! core::exists sdkmanager)" ] && brew install --cask android-sdk
    [ "$(! core::exists java)" ] && brew install openjdk@11

    sdkmanager --update

    yes | sdkmanager "platform-tools"
    yes | sdkmanager "platform-tools" "build-tools;31.0.0"

    flutter config --android-sdk "${ANDROID_SDK_ROOT}"

    yes | flutter doctor --android-licenses
    message_success "Flutter Dependences Installed"
}
