$packageArgs = @{
  PackageName  = 'geosetter.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://geosetter.de/update/geosetter_setup.exe'
  Checksum     = ''
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
