#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function flutter::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_FLUTTER_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_FLUTTER_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_FLUTTER_PATH}"/internal/linux.zsh
      ;;
    esac
}

flutter::internal::main::factory

flutter::internal::flutter::load

if ! core::exists curl; then core::install curl; fi
if ! core::exists wget; then core::install wget; fi
if ! core::exists flutter; then flutter::internal::flutter::install; fi
