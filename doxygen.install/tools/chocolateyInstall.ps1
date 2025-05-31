$packageArgs = @{
  PackageName  = 'doxygen.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://sourceforge.net/projects/doxygen/files/rel-1.14.0/doxygen-1.14.0-setup.exe/download'
  Checksum     = 'af9ab9326f204767893a05321058e255ddc053fb'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
