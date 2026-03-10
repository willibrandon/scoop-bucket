<#
.SYNOPSIS
    Lists manifests that are missing a checkver definition.
.DESCRIPTION
    Delegates to Scoop's built-in missing-checkver.ps1 to identify manifests
    that cannot be automatically checked for version updates.
#>
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$missing_checkver = "$env:SCOOP_HOME/bin/missing-checkver.ps1"
$dir = "$PSScriptRoot/../bucket"
& $missing_checkver -Dir $dir @Args
