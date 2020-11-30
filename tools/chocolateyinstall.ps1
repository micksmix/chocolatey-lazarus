$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2032%20bits/Lazarus%202.0.10/lazarus-2.0.10-fpc-3.2.0-win32.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%202.0.10/lazarus-2.0.10-fpc-3.2.0-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = 'F42F478F8B159FC7FE192133FBFE35B00FCD36E501A73FAF012DDEE5E27E3690'
  checksumType  = 'sha256'
  checksum64    = '1C0F9080123C7E44DC4E760F2D19FA315EDF372A517BB385D069EFDC6D4F5217'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















