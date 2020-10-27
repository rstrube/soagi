#!/bin/bash

#|# Mandatory programs & utilities
#|./ingredients/core/utils.sh

DIR=$(dirname "$0")
source $DIR/../_helper/_common-functions.sh

sudo pacman -Syu --noconfirm --needed rsync wget reflector

CWD=$(pwd)

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si

cd ${CWD}
rm -rf /tmp/yay