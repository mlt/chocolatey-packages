$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.17.0/doxygen-1.17.0-setup.exe/download'
  Checksum     = '43e45e3a8eaaf0a6b7dda1f2175fbc7761a0f85b'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
