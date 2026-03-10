<#
.SYNOPSIS
    Verifies that manifest hashes match the downloaded artifacts.
.DESCRIPTION
    Delegates to Scoop's built-in checkhashes.ps1 to download each manifest's
    URL and confirm the SHA256 hash is correct.
#>
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$checkhashes = "$env:SCOOP_HOME/bin/checkhashes.ps1"
$dir = "$PSScriptRoot/../bucket"
& $checkhashes -Dir $dir @Args
