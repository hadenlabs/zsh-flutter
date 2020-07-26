#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

FLUTTER_FILE="linux/flutter_linux_${FLUTTER_VERSION}.tar.xz"

function flutter::install {
    message_info "Installing Flutter"
    local flutter_download
    flutter_download="${FLUTTER_DOWNLOAD_URL}/${FLUTTER_FILE}"
    wget -qO- "${flutter_download}" | tar xvz - -C "${HOME}/google"
    message_success "Flutter Installed"
}
