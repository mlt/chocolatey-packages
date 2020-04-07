$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.8.17/doxygen-1.8.17-setup.exe/download'
  Checksum     = '1ef86daf5d41f56fa62d827027dda291968cd1dc'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
