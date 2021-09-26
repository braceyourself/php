#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd "$DIR/8.0" && ./build.sh
cd "$DIR/7.4" && ./build.sh
