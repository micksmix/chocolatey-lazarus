$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%203.6/lazarus-3.6-fpc-3.2.2-cross-i386-win32-win64.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%203.6/lazarus-3.6-fpc-3.2.2-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = '6587ce04b8869bf22c655b0c2f0dbb4146a9e1926f8d0896c37b61fcf1b7e813'
  checksumType  = 'sha256'
  checksum64    = '568ec39f976d789ad4cfee75c999f1fe4fe0cbf54089a2b26d3b098b9190cc75'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















