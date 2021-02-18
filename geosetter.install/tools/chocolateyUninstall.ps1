$packageName = "geosetter.install"
$fileType = "exe"
$silentArgs = "/VERYSILENT"
$validExitCodes = @(0)
    
try {
  $is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
  $programFiles = $env:programfiles
  if ($is64bit) {$programFiles = ${env:ProgramFiles(x86)}}
  $unfile = Join-Path $programFiles 'GeoSetter\unins000.exe'

  Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $unfile -validExitCodes $validExitCodes

  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
