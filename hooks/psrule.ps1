#!/usr/bin/env pwsh
Write-Host "Installing PSRule"
Install-Module -Name 'PSRule.Rules.Azure' -Scope CurrentUser -Force -Confirm:$false;

$Env:PSRULE_AZURE_BICEP_PATH = '/usr/local/bin/bicep';

Write-Host "Asserting PSRule"
Assert-PSRule -Module 'PSRule.Rules.Azure' -InputPath .;
