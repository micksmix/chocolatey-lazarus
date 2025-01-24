$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%203.8/lazarus-3.8-fpc-3.2.2-cross-i386-win32-win64.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%203.8/lazarus-3.8-fpc-3.2.2-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = '604cb49481ed8b1a1c1546dd8d07ec5970c9b06453659891801a7252600d189b'
  checksumType  = 'sha256'
  checksum64    = '5db76aac7c9e20f665e85b8ab06abd5b46a87858f6539ec4dd181d1750ad046a'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















