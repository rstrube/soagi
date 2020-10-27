#!/bin/bash

#|# Microsoft Teams
#|#./ingredients/web/teams.sh

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

function main() {
    check_critical_prereqs
    install
}

function install() {
    yay -Syu --noconfirm --needed teams
}

function check_critical_prereqs() {
    check_yay_prereq
}

main "$@"