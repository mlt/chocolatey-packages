$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.5/doxygen-1.9.5-setup.exe/download'
  Checksum     = 'e74045bb80bd2837a5d1e3099e437fc25fdb1c89'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
