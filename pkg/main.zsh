#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_FLUTTER_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_FLUTTER_PATH}"/pkg/linux.zsh
      ;;
    esac

    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/pkg/alias.zsh

    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/pkg/pub/main.zsh

    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/pkg/flutter/main.zsh
}

flutter::pkg::main::factory

