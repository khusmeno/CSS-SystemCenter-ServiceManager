##### WRITE #######

$smdtClass = Get-SCSMClass -name "MicrosoftSupport.SCSM.SMDT.Latest"
$smdtIns = Get-SCSMClassInstance -Class $smdtClass
$smdtIns.Version = '2023.07.07.1448'
$smdtIns.SetAsMethod = "Console"
$smdtIns.SetFromMachine = "SmSc2019.khusmeno.com"
$smdtIns.SetByUser = "khusmeno@khusmeno.com"

$path = 'C:\GitHub\khusmeno\CSS-SystemCenter-ServiceManager\MicrosoftSupport.SCSM\LocalDebug\SCSM-Diagnostic-Tool.zip'
$fs = [IO.File]::OpenRead($path)
$smdtIns.CompressedContent = $fs  
$smdtIns | Update-SCSMClassInstance
$fs.Close()



##### READ #######

$smdtClass = Get-SCSMClass -name "MicrosoftSupport.SCSM.SMDT.Latest"
$smdtIns = Get-SCSMClassInstance -Class $smdtClass
$path = 'C:\GitHub\khusmeno\CSS-SystemCenter-ServiceManager\MicrosoftSupport.SCSM\LocalDebug\SCSM-Diagnostic-Toolv2.zip'
$fs = [IO.File]::OpenWrite($path)
$smdtIns.CompressedContent.CopyTo($fs)
$fs.Close()



