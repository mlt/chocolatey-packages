$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.18.0/doxygen-1.18.0-setup.exe/download'
  Checksum     = '68e09b819152a55814bb620311d37e068e447825'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
