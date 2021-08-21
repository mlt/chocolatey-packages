$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.2/doxygen-1.9.2-setup.exe/download'
  Checksum     = '16103418cd99629971b2960394dc4493af612afc'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
