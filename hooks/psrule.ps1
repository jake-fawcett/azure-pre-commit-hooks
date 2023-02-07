#!/usr/bin/env pwsh
$Env:PSRULE_AZURE_BICEP_PATH = '/usr/local/bin/bicep';

Write-Host "Asserting PSRule"
Assert-PSRule -Module 'PSRule.Rules.Azure' -InputPath .;
