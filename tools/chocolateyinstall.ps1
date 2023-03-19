$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2032%20bits/Lazarus%202.2.6/lazarus-2.2.6-fpc-3.2.2-win32.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%202.2.6/lazarus-2.2.6-fpc-3.2.2-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = '158A2F7DE4E42807AE667A5B79F59DA9723AB0F99BE8D4E7A04E94BF4C20217B'
  checksumType  = 'sha256'
  checksum64    = '97461DFE6E282B172F33B80B00D771F2780B2D76BD346BECCC43BC98E1A80A8D'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















