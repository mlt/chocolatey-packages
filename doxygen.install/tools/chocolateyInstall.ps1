$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.6/doxygen-1.9.6-setup.exe/download'
  Checksum     = 'b067278b94d044e0bf20ef3737408681196a72cf'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
