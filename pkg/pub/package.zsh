#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

PUB_PACKAGES_GLOBAL=(
    webdev
    stagehand
)

function pub::package::install {
    message_info "Installing Dependences for Pub"
    for package in "${PUB_PACKAGES_GLOBAL[@]}"; do
        pub global activate "${package}"
    done
    message_success "Installed Dependences for Pub"
}