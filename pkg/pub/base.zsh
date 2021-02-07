#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function pub::post_install {
    message_info "Installing Dependences for Pub"
    message_info "Installed Dependences for Pub"
}

function pub::load {
    [ -e "${PUB_BIN_PATH}" ] && export PATH="${PATH}:${PUB_BIN_PATH}"
}

function pub::dependences {
    if type -p pub > /dev/null; then
        return
    fi
    message_info "Validating Dependences for Pub"
    message_success "Validated Dependences for Pub"
}
