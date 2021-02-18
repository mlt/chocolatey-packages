$packageArgs = @{
  PackageName  = 'geosetter.install'
  FileType     = 'exe'
  SilentArgs   = '/VERYSILENT'
  Url          = 'https://geosetter.de/update/geosetter_setup.exe'
  Checksum     = 'e9b08b023e456bb39a20209e4a288cab1740b0a5'
  ChecksumType = 'sha1'
}

Install-ChocolateyPackage @packageArgs
