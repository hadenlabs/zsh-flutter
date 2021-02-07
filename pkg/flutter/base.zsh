#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::install {
    flutter::internal::flutter::install
}

function flutter::load {
    flutter::internal::flutter::load
}

function flutter::install::post_install {
    flutter::internal::flutter::post_install
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
