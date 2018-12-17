. (Join-Path (Split-Path -parent $MyInvocation.MyCommand.Definition) chocolateyInclude.ps1)

$uninstallPath = (Get-ItemProperty $uninstallRegKey UninstallString).UninstallString
Uninstall-ChocolateyPackage $package 'exe' '/VERYSILENT' $uninstallPath

