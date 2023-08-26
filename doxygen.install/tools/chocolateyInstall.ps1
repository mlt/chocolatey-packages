$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.8/doxygen-1.9.8-setup.exe/download'
  Checksum     = 'd525c83344fc8b33df0afc9fe8ec43121e7770ef'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
