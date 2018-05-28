
$ErrorActionPreference = 'Stop';

$packageName= 'Lazarus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2032%20bits/Lazarus%201.8.4/lazarus-1.8.4-fpc-3.0.4-win32.exe/download'
$url64      = 'http://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/Lazarus%201.8.4/lazarus-1.8.4-fpc-3.0.4-win64.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Lazarus*'

  checksum      = '2606898f3ab52379762fd647ea24b46866dcc248cca88207f355804a880528a1'
  checksumType  = 'sha256'
  checksum64    = '96eccd0e7795989413252c5828bf2a5c8105acc364e362dbc980ae2ffef95f3a'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs


















