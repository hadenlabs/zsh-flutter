#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::main::factory {
    # shellcheck source=/dev/null
    source "${FLUTTER_SRC_PATH}"/pkg/flutter/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${FLUTTER_SRC_PATH}"/pkg/flutter/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${FLUTTER_SRC_PATH}"/pkg/flutter/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${FLUTTER_SRC_PATH}"/pkg/flutter/helper.zsh
}

flutter::main::factory

flutter::dependences

flutter::install

flutter::install::after