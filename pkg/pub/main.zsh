#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function pub::main::factory {
    # shellcheck source=/dev/null
    source "${FLUTTER_SRC_PATH}"/pkg/pub/base.zsh

    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${FLUTTER_SRC_PATH}"/pkg/pub/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${FLUTTER_SRC_PATH}"/pkg/pub/linux.zsh
      ;;
    esac

    # shellcheck source=/dev/null
    source "${FLUTTER_SRC_PATH}"/pkg/pub/helper.zsh
}

pub::main::factory

pub::dependences