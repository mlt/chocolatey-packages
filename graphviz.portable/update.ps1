import-module au
$NoCheckChocoVersion=1
$root   = 'https://graphviz.gitlab.io/_pages/Download'
$releases = "$root/Download_windows.html"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*Url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*Checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri $releases

  $re = 'graphviz-(.+)\.zip'
  $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
  $a = $url | Select-String -Pattern $re
  $version = $a.matches.groups[1]

  @{
    URL32 = "$root/$url"
    Version = $version
    ChecksumType32 = 'sha1'
  }
}

update -ChecksumFor 32 -NoCheckChocoVersion
