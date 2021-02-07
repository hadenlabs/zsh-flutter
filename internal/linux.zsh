#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::flutter::install {
    message_info "Installing ${FLUTTER_PACKAGE_NAME}"
    local flutter_download
    flutter_download="${FLUTTER_DOWNLOAD_URL}/${FLUTTER_FILE}"
    wget -qO- "${flutter_download}" | tar xvz - -C "${GOOGLE_ROOT}" || return
    message_success "Installed ${FLUTTER_PACKAGE_NAME}"
}