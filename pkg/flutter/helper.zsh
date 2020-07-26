#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::purge {
    # clean path of flutter
    message_info "Clean flutter if exists"
    [ -e "${FLUTTER_ROOT}" ] && rm -rf "${FLUTTER_ROOT}"
}
