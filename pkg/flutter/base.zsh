#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export FLUTTER_ROOT="${HOME}/google/flutter"
export FLUTTER_DOWNLOAD_URL="https://storage.googleapis.com/flutter_infra/releases/stable"

function flutter::install::after {
    message_info "Installing Dependences for Flutter"
    message_info "Installed Dependences for Flutter"
}

function flutter::load {
    [ -e "${FLUTTER_ROOT}/bin" ] && export PATH="${PATH}:${FLUTTER_ROOT}/bin"
    [ -e "${FLUTTER_ROOT}/bin/cache/dart-sdk" ] && export FLUTTER_DART_SDK="${FLUTTER_ROOT}/bin/cache/dart-sdk"
    [ -e "${FLUTTER_DART_SDK}/bin" ] && export PATH="${PATH}:${FLUTTER_DART_SDK}/bin"
}

function flutter::dependences {
    if type -p flutter > /dev/null; then
        return
    fi

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
}
