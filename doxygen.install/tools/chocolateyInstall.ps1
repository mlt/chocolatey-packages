$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.13.0/doxygen-1.13.0-setup.exe/download'
  Checksum     = '0b0bf6d6b3a89d556fae0a88ab013db2cf344eb1'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
