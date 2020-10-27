#!/bin/bash

#|# Tauon Music Player
#|#./ingredients/media/tauon-music-player.sh

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

function main() {
    check_critical_prereqs
    install
}

function install() {
    flatpak install -y flathub com.github.taiko2k.tauonmb
}

function check_critical_prereqs() {
    check_flatpak_prereq
}

main "$@"