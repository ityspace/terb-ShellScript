#!/bin/bash

bash ~/.config/terb/src/build.sh
python3 -m http.server --directory ./public/