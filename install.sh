#!/usr/bin/env bash

# the way to find out the full REAL path to the dir where THIS script lives
REL_SRC=${BASH_SOURCE[0]}
CANONICAL_SRC=$(readlink -f $REL_SRC)
DIR="$(cd -P "$(dirname $CANONICAL_SRC)" && pwd)"


# making a backup of the current screenrc the user might have
TARGET="${HOME}/.screenrc"
if [ -e ${TARGET} ]; then  # only backup if it exists
    if [ ! -L ${TARGET} ]; then  # only if it is NOT a link
        mv ${TARGET} "${TARGET}.bkp"
    fi
fi

# making the link to the version in this repo
echo "source ${DIR}/screenrc" > ${TARGET}

ln -s -f "${DIR}/screenrc-simple.rc" "${HOME}/.screenrc-simple"
