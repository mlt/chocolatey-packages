$packageArgs = @{
  PackageName   = 'graphviz.portable'
  Url           = 'https://graphviz.gitlab.io/_pages/Download/windows/graphviz-2.38.zip'
  Checksum      = '8e0eeb7aa6a84fc9c53d29ca9548a66af7762a03'
  ChecksumType  = 'sha1'
  UnzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
}

Install-ChocolateyZipPackage @packageArgs
