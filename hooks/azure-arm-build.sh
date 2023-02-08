#!/usr/bin/env bash
# Script to find json (arm) files and run az bicep decompile to validate, then remove any outputs produced
set -eo pipefail

find . -name \*.json -exec az bicep decompile --file {} \; -exec sh -c 'rm ${1%????}bicep' sh {} \;
