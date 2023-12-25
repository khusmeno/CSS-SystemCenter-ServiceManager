if (-not (Get-Module -name System.Center.Service.Manager)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory +'PowerShell\' +'System.Center.Service.Manager.psd1') -Force }
if (-not (Get-Module -name Microsoft.EnterpriseManagement.Warehouse.Cmdlets)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory  +'Microsoft.EnterpriseManagement.Warehouse.Cmdlets.psd1') -Force } 

cd "C:\GitHub\khusmeno\CSS-SystemCenter-ServiceManager\MicrosoftSupport.SCSM\SourceCode\DW.Monitoring" 

#C:\Users\khusmeno\Desktop\kh\FastSeal.exe MicrosoftSupport.SCSM.HealthStatus.DW.Monitoring.xml /keyfile C:\Users\khusmeno\Desktop\kh\kh.snk /company kh
#New-SCSMManagementPackBundle -Name MicrosoftSupport.SCSM.HealthStatus.DW.Monitoring.mpb -ManagementPack MicrosoftSupport.SCSM.HealthStatus.DW.Monitoring.mp -Resource "..\SCSM-Diagnostic-Tool\LocalDebug\SCSM-Diagnostic-Tool.ps1" -Force

New-SCSMManagementPackBundle -Name MicrosoftSupport.SCSM.HealthStatus.DW.Monitoring.mpb -ManagementPack MicrosoftSupport.SCSM.HealthStatus.DW.Monitoring.xml -Resource "..\..\..\SCSM-Diagnostic-Tool\LocalDebug\SCSM-Diagnostic-Tool.ps1" -Force

Import-SCSMManagementPack -Fullname MicrosoftSupport.SCSM.HealthStatus.DW.Monitoring.mpb -ComputerName SMDW22CSS

read-host " "


