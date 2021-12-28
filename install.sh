#! /usr/bin/env bash

read -r PROG_DIR < <(
    cd "${0%/*}" && pwd
)

BIN_DIR="/usr/local/bin"

cd "${BIN_DIR}" || exit 1
sudo rm -f "${BIN_DIR}/glabels-2" "${BIN_DIR}/glabels-batch-2"

sudo ln -s "${PROG_DIR}/glabels" ./glabels-2
sudo ln -s "${PROG_DIR}/glabels-batch" ./glabels-batch-2

cd "${PROG_DIR}" || exit 1

sudo cp glabels.desktop /usr/share/applications/

sudo mkdir -p /usr/share/pixmaps
sudo cp glabels.xpm /usr/share/pixmaps/
