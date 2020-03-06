<#

.SYNOPSIS
Get-RegHive.ps1

.PARAMETER RegPath
A required parameter that names registry hive to collect data from.

.PARAMETER Recurse
An optional parameter if you want to recurse the high level registry hive

.Example
Get-RegHive.ps1 HKLM\Software\

OUTPUT json
#>

[CmdletBinding()]
Param(
    [Parameter(Mandatory=$True,Position=0)]
        [String]$RegPath,
    [Parameter(Mandatory=$False,Position=1)]
        [int]$Recurse=0
)

#$Result = Get-ChildItem -Path $RegPath -Recurse -ErrorAction SilentlyContinue
$Result = reg QUERY "$RegPath" /s
$Result