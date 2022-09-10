#!/bin/sh
debug_project=$1
gpg -b ./target/debug/"$debug_project"
gpg --verify ./target/debug/"$debug_project".sig ./target/debug/"$debug_project"
release_project=$1
gpg -b ./target/release/"$release_project"
gpg --verify ./target/release/"$release_project".sig ./target/release/"$release_project"
