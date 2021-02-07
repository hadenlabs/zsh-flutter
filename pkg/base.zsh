#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::dependences {
    message_info "Installing dependences for ${FLUTTER_PACKAGE_NAME}"
    message_success "Installed dependences for ${FLUTTER_PACKAGE_NAME}"
}

function flutter::install {
    flutter::internal::flutter::install
}

function flutter::load {
    flutter::internal::flutter::load
}

function flutter::post_install {
    message_info "Post Install ${FLUTTER_PACKAGE_NAME}"
    message_success "Success Install ${FLUTTER_PACKAGE_NAME}"
}

function flutter::upgrade {
    flutter::internal::flutter::upgrade
}

function flutter::package::all::install {
    flutter::internal::packages::install
}
