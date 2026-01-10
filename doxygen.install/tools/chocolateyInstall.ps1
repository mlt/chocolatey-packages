$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.16.0/doxygen-1.16.0-setup.exe/download'
  Checksum     = '9abd7c0345bfda6fe86f2431f9e93e9347a6600a'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
