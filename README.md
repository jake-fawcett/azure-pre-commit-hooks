# azure-pre-commit-hooks
Pre-commit Hooks for Azure Projects

## azure-bicep-build
Build Azure Bicep code to check for validation errors

`find . -name \*.bicep -exec az bicep build --file {} --outfile pre-commit-temp.json \; && rm pre-commit-temp.json`
