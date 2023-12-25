if (-not (Get-Module -name System.Center.Service.Manager)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory +'PowerShell\' +'System.Center.Service.Manager.psd1') -Force }
if (-not (Get-Module -name Microsoft.EnterpriseManagement.Warehouse.Cmdlets)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory  +'Microsoft.EnterpriseManagement.Warehouse.Cmdlets.psd1') -Force } 
#cd C:\GitHub\khusmeno\CSS-SystemCenter-ServiceManager\MicrosoftSupport.SCSM

Import-SCSMManagementPack -Fullname khcustomrule.mpb
read-host " "

