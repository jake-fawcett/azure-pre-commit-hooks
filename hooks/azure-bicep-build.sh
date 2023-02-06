#!/usr/bin/env bash
# Script to find bicep files and run az bicep build to validate, then remove any outputs produced
set -eo pipefail

find . -name \\*.bicep -exec az bicep build --file {} --outfile pre-commit-temp.json \\;
rm pre-commit-temp.json
