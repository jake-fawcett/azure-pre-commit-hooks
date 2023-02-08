#!/usr/bin/env bash
# Script to find json (arm) files and run az bicep decompile to validate, then remove any outputs produced
set -eo pipefail

find . -name \*.bicep -exec az bicep decompile --file {} --outfile pre-commit-temp.bicep \;
rm pre-commit-temp.bicep
