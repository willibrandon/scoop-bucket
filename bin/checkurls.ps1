<#
.SYNOPSIS
    Checks that all manifest download URLs are reachable.
.DESCRIPTION
    Delegates to Scoop's built-in checkurls.ps1 to verify that every URL
    in the bucket's manifests returns a valid response.
#>
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$checkurls = "$env:SCOOP_HOME/bin/checkurls.ps1"
$dir = "$PSScriptRoot/../bucket"
& $checkurls -Dir $dir @Args
