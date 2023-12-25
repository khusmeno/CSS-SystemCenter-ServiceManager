if (-not (Get-Module -name System.Center.Service.Manager)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory +'PowerShell\' +'System.Center.Service.Manager.psd1') -Force }
if (-not (Get-Module -name Microsoft.EnterpriseManagement.Warehouse.Cmdlets)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory  +'Microsoft.EnterpriseManagement.Warehouse.Cmdlets.psd1') -Force } 
cd C:\GitHub\khusmeno\CSS-SystemCenter-ServiceManager\MicrosoftSupport.SCSM

C:\Users\khusmeno\Desktop\kh\FastSeal.exe khcustomrule.xml /keyfile C:\Users\khusmeno\Desktop\kh\kh.snk /company kh

New-SCSMManagementPackBundle -Name khcustomrule.mpb -ManagementPack khcustomrule.mp,MicrosoftSupport.SCSM.Notifications.xml -Resource "..\SCSM-Diagnostic-Tool\LocalDebug\SCSM-Diagnostic-Tool.ps1" -Force

Import-SCSMManagementPack -Fullname khcustomrule.mpb
read-host " "

