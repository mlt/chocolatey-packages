$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.16.1/doxygen-1.16.1-setup.exe/download'
  Checksum     = 'cac9f7f9810615f3e60e25c3bbf65cfc06cb3b49'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
