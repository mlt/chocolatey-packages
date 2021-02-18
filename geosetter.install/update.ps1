import-module au

$releases = 'https://geosetter.de/en/download-en/'

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

  # Url is stable geosetter_setup.exe but it used to be geosetter_beta.exe
  # make it glexible
  $re = 'geosetter(.*)\.exe$'
  $url = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href

  # Can we do something better with
  # <p class="site-description">Version 3.5.3 /
  $re = 'Version (.*) /'
  $m = $download_page.Content | Select-String -Pattern $re
  $version = $m.Matches.Groups[1].Value

  @{
    URL32          = $url
    Version        = $version
    ChecksumType32 = 'sha1'
  }
}

update -ChecksumFor 32
