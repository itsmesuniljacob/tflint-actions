#!/bin/sh -l

cd $GITHUB_WORKSPACE

export PATH=${1}
export RULE_FILE=${2}

tflint -c RULE_FILE PATH