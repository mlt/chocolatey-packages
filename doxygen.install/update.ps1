import-module au
$NoCheckChocoVersion=1
$root   = 'http://www.doxygen.nl'
$releases = "$root/download.html"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInclude.ps1" = @{
      "(?i)(^\s*\`$url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*\`$sha1\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
    }
    ".\doxygen.install.nuspec" = @{
      "\<releaseNotes\>.+" = "<releaseNotes>$($Latest.ReleaseNotes)</releaseNotes>"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri $releases

  $re    = '^http.+\.exe$'
  $url   = $download_page.links | ? href -match $re | select -First 1 -expand href

  $version  = ($url -split '-' | select -Last 1 -Skip 1)

  $releaseNotesUrl = "$root/manual/changelog.html"

  @{
    URL32 = $url
    Version = $version
    ReleaseNotes = $releaseNotesUrl
    ChecksumType32 = 'sha1'
  }
}

update -ChecksumFor 32 -NoCheckChocoVersion
