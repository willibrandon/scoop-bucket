<#
.SYNOPSIS
    Checks for newer versions of manifests in this bucket.
.DESCRIPTION
    Delegates to Scoop's built-in checkver.ps1 to compare manifest versions
    against the latest available upstream versions.
#>
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$PSScriptRoot/../bucket"
& $checkver -Dir $dir @Args
