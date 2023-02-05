#!/bin/bash
find . -name \*.bicep -exec az bicep build --file {} --outfile pre-commit-temp.json \;
rm pre-commit-temp.json