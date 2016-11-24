
$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2032%20bits/Lazarus%201.6.2/lazarus-1.6.2-fpc-3.0.0-win32.exe/download'
$url64      = 'http://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%201.6.2/lazarus-1.6.2-fpc-3.0.0-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = 'EB9E5F2A5E6D056C495F5D9CB77FC9C40B7173F36DEAB643CA96D728EEF6FA26'
  checksumType  = 'sha256'
  checksum64    = '29757EE4C332E8935BFB1791AF43CD4CFB39EB3FEAC979C34585067AEC58AA38'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















