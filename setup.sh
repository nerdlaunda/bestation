#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
BASE_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

# $BASE_DIR/pre-flight.sh
# $BASE_DIR/install-independents.sh
$BASE_DIR/zsh-configuration.sh
$BASE_DIR/finalize.sh