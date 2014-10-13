#!/usr/bin/env bash

DIR="$(cd -P "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" && pwd)"


# making a backup of the current screenrc the user might have
TARGET="${HOME}/.screenrc"
[ -e "${TARGET}" ] && [ ! -L "${TARGET}" ] && mv "${TARGET}" "${TARGET}.bkp"

# making the link to the version in this repo
echo "source \"${DIR}/screenrc\"" > "${TARGET}"

# link to screen-scripts dir
ln -s -f -n "${DIR}/screen-scripts"   "${HOME}/.screen-scripts"

