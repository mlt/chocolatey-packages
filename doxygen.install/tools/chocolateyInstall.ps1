$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.4/doxygen-1.9.4-setup.exe/download'
  Checksum     = '89809dab3307625a3d28c0982b7215c088b1b6b9'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
