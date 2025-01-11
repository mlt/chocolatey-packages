$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.13.2/doxygen-1.13.2-setup.exe/download'
  Checksum     = 'cd7d3acbc4ed75a57cfa10c6da4f264f5ea461c5'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
