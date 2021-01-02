$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.9.0/doxygen-1.9.0-setup.exe/download'
  Checksum     = 'da7a10b1a27151a99bd481051cfa272c094f0cbf'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
