$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.12.0/doxygen-1.12.0-setup.exe/download'
  Checksum     = 'b2cc5afde5b1ae33cfd953440522ba9c87fdd3ef'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
