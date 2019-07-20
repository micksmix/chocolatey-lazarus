
$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2032%20bits/Lazarus%202.0.2/lazarus-2.0.2-fpc-3.0.4-win32.exe/download'
$url64      = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%202.0.2/lazarus-2.0.2-fpc-3.0.4-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = 'DB3C8F93B18914774AF5D9815F84CC44011C12FA07597399ABF5E7D9EDD5501E'
  checksumType  = 'sha256'
  checksum64    = '815300CB216CB6714ECCB820A652AAB63D9B21F120D5ED7B2DCFD1A3F547C02B'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















