$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.8.18/doxygen-1.8.18-setup.exe/download'
  Checksum     = 'c781783f594eadaf7f3c2983dc7f9a1c99e91c90'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
