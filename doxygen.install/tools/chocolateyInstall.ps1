$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.15.0/doxygen-1.15.0-setup.exe/download'
  Checksum     = '6a1b8b89f6b5b99f462dc2704f66b78ba5835f57'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
