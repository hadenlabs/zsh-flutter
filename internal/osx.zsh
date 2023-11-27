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
    mkdir -p "${ANDROID_HOME}"

    [ "$(! core::exists java)" ] && brew install openjdk@11 openjdk@17
    [ "$(! core::exists sdkmanager)" ] && brew install --cask android-commandlinetools

    sdkmanager --update --sdk_root="${ANDROID_HOME}"
    sdkmanager --install "cmdline-tools;latest" --sdk_root="${ANDROID_HOME}"
    yes | sdkmanager "platforms;android-33" --sdk_root="${ANDROID_HOME}"
    yes | sdkmanager "platform-tools" --sdk_root="${ANDROID_HOME}"
    yes | sdkmanager "platform-tools" "build-tools;33.0.0" --sdk_root="${ANDROID_HOME}"
    yes | sdkmanager "extras;google;m2repository" --sdk_root="${ANDROID_HOME}"
    yes | sdkmanager "extras;android;m2repository" --sdk_root="${ANDROID_HOME}"

    flutter config --android-sdk "${ANDROID_HOME}"

    yes | flutter doctor --android-licenses --sdk_root="${ANDROID_HOME}"
    message_success "Flutter Dependences Installed"
}