#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
BASE_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

$BASE_DIR/steps/pre-flight.sh
$BASE_DIR/steps/install-independents.sh
$BASE_DIR/steps/zsh-configuration.sh
$BASE_DIR/steps/finalize.sh