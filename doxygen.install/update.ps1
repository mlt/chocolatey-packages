import-module au

$releases = 'https://sourceforge.net/projects/doxygen/files'

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(^\s*Url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
      "(^\s*Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri $releases

  $re = 'rel-([\d\.]+)/$'
  $path = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri "https://sourceforge.net/$path"

  $re = '-setup\.exe/download$'
  $url = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href

  $version = ($url -split '-' | Select-Object -Last 1 -Skip 1)

  @{
    URL32          = $url
    Version        = $version
    ChecksumType32 = 'sha1'
  }
}

update -ChecksumFor 32
