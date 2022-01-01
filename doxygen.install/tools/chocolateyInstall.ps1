$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.3/doxygen-1.9.3-setup.exe/download'
  Checksum     = '24fd29b4476ad1197a41438efcd67b926db923cd'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
