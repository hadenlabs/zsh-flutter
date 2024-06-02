#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::flutter::post_install {
    if ! core::exists brew; then
        message_info "${FLUTTER_MESSAGE_BREW}"
        return
    fi

    core::multiplatform::install

    flutter config --android-sdk "${ANDROID_HOME}"

    yes | flutter doctor --android-licenses --sdk_root="${ANDROID_HOME}"
    message_success "Flutter Dependences Installed"
}