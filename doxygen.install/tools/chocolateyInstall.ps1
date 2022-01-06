$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.3/doxygen-1.9.3-setup.exe/download'
  Checksum     = '83f7241dfb44c5bb271072792379bcb539284247'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
