$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.13.1/doxygen-1.13.1-setup.exe/download'
  Checksum     = '32e0f3df5144be3cd9ea00e91e2de0b49b5ca47b'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
