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
    if core::exists flutter; then
        return
    fi

    if ! core::exists curl; then
        message_warning "Is neccesary get curl"
    fi

    if ! core::exists git; then
        message_warning "Is neccesary get git"
    fi

    if ! core::exists wget; then
        message_warning "Is neccesary get wget"
    fi

    if ! core::exists unzip; then
        message_warning "Is neccesary get unzip"
    fi
}
