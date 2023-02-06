# azure-pre-commit-hooks
Pre-commit Hooks for Azure Projects

## azure-bicep-build
Script to find bicep files and run az bicep build to validate, then remove any outputs produced

```
find . -name \*.bicep -exec az bicep build --file {} --outfile pre-commit-temp.json \;
rm pre-commit-temp.json
```