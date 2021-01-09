$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.1/doxygen-1.9.1-setup.exe/download'
  Checksum     = 'ef915a447bb2c043031fede2a5c771a8092f3857'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
