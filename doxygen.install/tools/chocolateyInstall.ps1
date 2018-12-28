$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'http://doxygen.nl/files/doxygen-1.8.14-setup.exe'
  Checksum     = ''
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
