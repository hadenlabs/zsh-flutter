# -*- coding: utf-8 -*-
"""Tests for the zsh aliases."""
from hamcrest import assert_that, equal_to


def test_try():
    assert_that(True, equal_to(True))
