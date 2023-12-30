$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.10.0/doxygen-1.10.0-setup.exe/download'
  Checksum     = '2dc8355613e967d08e0f54a0f01217add8423335'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
