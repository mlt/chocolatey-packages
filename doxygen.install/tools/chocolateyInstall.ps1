. (Join-Path (Split-Path -parent $MyInvocation.MyCommand.Definition) chocolateyInclude.ps1)

Install-ChocolateyPackage $package 'exe' '/VERYSILENT' $url -Checksum $sha1 -ChecksumType 'sha1'
