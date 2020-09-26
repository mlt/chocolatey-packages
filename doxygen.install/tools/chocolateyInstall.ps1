$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.8.20/doxygen-1.8.20-setup.exe/download'
  Checksum     = '2d72c72bea9dad722cb3b23ce20e7ea4a6496335'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
