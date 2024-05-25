$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.11.0/doxygen-1.11.0-setup.exe/download'
  Checksum     = 'b0dd797594943dafe070f4b40e01f7a474dda874'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
