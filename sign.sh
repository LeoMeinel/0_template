#!/bin/bash
###
# File: sign.sh
# Author: Leopold Meinel (leo@meinel.dev)
# -----
# Copyright (c) 2022 Leopold Meinel & contributors
# SPDX ID: GPL-3.0-or-later
# URL: https://www.gnu.org/licenses/gpl-3.0-standalone.html
# -----
###

debug_project=$1
gpg -b ./target/debug/"$debug_project"
gpg --verify ./target/debug/"$debug_project".sig ./target/debug/"$debug_project"
release_project=$1
gpg -b ./target/release/"$release_project"
gpg --verify ./target/release/"$release_project".sig ./target/release/"$release_project"
