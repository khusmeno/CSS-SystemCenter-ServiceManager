if (-not (Get-Module -name System.Center.Service.Manager)) { Import-Module ((Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\System Center\2010\Service Manager\Setup').InstallDirectory +'PowerShell\' +'System.Center.Service.Manager.psd1') -Force }
cd C:\GitHub\khusmeno\CSS-SystemCenter-ServiceManager\MicrosoftSupport.SCSM

C:\Users\khusmeno\Desktop\kh\FastSeal.exe MicrosoftSupport.SCSM.HealthStatus.Core.xml /keyfile C:\Users\khusmeno\Desktop\kh\kh.snk /company kh

Import-SCSMManagementPack -Fullname MicrosoftSupport.SCSM.HealthStatus.Core.mp

read-host " "

