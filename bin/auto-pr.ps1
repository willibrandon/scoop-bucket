<#
.SYNOPSIS
    Automatically creates pull requests for updated manifests.
.DESCRIPTION
    Delegates to Scoop's built-in auto-pr.ps1 to check for version updates
    and submit pull requests to the upstream bucket repository.
.PARAMETER upstream
    The upstream repository and branch in the format 'owner/repo:branch'.
#>
param(
    [String]$upstream = "willibrandon/scoop-bucket:main"
)

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$PSScriptRoot/../bucket"
& $autopr -Dir $dir -Upstream $Upstream @Args
