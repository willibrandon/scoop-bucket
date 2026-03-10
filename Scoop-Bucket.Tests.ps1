<#
.SYNOPSIS
    Pester test entry point for the Scoop bucket.
.DESCRIPTION
    Imports and runs Scoop's standard bucket validation tests, which check
    manifest schema, URL validity, hash correctness, and naming conventions.
#>
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
. "$env:SCOOP_HOME\test\Import-Bucket-Tests.ps1"
