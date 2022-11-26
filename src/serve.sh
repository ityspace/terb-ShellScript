#!/bin/bash

bin="$PREFIX/bin"

if [ ! -f "${bin}/python3" ]; then
    echo -e "${error}Please installed the python3 before you start !"
    exit 0
fi

bash ~/.config/terb/src/build.sh
python3 -m http.server --directory ./public/
