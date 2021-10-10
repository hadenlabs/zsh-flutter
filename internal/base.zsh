#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::flutter::install {
    message_info "Installing ${FLUTTER_PACKAGE_NAME}"
    local flutter_download
    flutter_download="${FLUTTER_DOWNLOAD_URL}/${FLUTTER_FILE}"
    wget -P "${GOOGLE_ROOT}" -O flutter.zip "${flutter_download}" && unzip -d "${GOOGLE_ROOT}" flutter.zip || return
    message_success "Installed ${FLUTTER_PACKAGE_NAME}"
}

function flutter::internal::flutter::load {
    [ -e "${FLUTTER_ROOT_BIN}" ] && export PATH="${PATH}:${FLUTTER_ROOT_BIN}"
    [ -e "${FLUTTER_DART_SDK_BIN}" ] && export PATH="${PATH}:${FLUTTER_DART_SDK_BIN}"
}

function flutter::internal::flutter::upgrade {
    message_warning "method not implement"
}
