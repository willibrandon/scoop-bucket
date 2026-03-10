<#
.SYNOPSIS
    Formats manifest JSON files to a consistent style.
.DESCRIPTION
    Delegates to Scoop's built-in formatjson.ps1 to normalize indentation
    and key ordering across all manifests in the bucket.
#>
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$formatjson = "$env:SCOOP_HOME/bin/formatjson.ps1"
$path = "$PSScriptRoot/../bucket"
& $formatjson -Dir $path @Args
