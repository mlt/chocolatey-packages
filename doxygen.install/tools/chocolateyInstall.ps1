$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.7/doxygen-1.9.7-setup.exe/download'
  Checksum     = 'f726620d31d60ab8424b21a6751a36681342eb83'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
