$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2032%20bits/Lazarus%202.0.6/lazarus-2.0.6-fpc-3.0.4-win32.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%202.0.6/lazarus-2.0.6-fpc-3.0.4-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = '24155786B2DE69334BE13A8CABAF28D52A7B72E735A098CD538DBB1AAE18E0C3'
  checksumType  = 'sha256'
  checksum64    = 'ACF428903551097094BA4BB31209C1D160F911FFB507EBC52AACA09AA0AE10EE'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















