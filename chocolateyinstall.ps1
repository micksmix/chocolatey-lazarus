$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%203.0/lazarus-3.0-fpc-3.2.2-cross-i386-win32-win64.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%203.0/lazarus-3.0-fpc-3.2.2-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = 'B8049996F24342959D9AAB863BAACA776D49C2A0118543DE26680670BFD581F0'
  checksumType  = 'sha256'
  checksum64    = 'E64C3D395CD731445DEE3A26014350C562AD9E9604DA505BB13A3726423B4F33'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















