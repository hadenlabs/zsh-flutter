#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_FLUTTER_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_FLUTTER_PATH}"/config/linux.zsh
      ;;
    esac
}

flutter::config::main::factory