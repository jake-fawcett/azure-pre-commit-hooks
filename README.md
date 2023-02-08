# azure-pre-commit-hooks
Pre-commit Hooks for Azure Projects

## azure-bicep-build
Script to find bicep files and run az bicep build to validate, then remove any outputs produced

```
find . -name \*.bicep -exec az bicep build --file {} --outfile pre-commit-temp.json \;
rm pre-commit-temp.json
```

## azure-arm-build
Script to find json (arm) files and run az bicep decompile to validate, then remove any outputs produced

```
find . -name \*.json -exec az bicep decompile --file {} \; -exec sh -c 'rm ${1%????}bicep' sh {} \;
```

## arm-bicep-psrule-linting
Script to run PSRule linting against Arm and Bicep templates. ps-rule.yaml config for PSRule

```
Assert-PSRule -Module 'PSRule.Rules.Azure' -InputPath .;
```
