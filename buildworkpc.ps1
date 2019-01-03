Set-ExecutionPolicy Unrestricted -Confirm:$false -Force

### INSTALL CHOCOLATEY
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install 7zip awscli azure-cli Boxstarter chefdk conemu firefox git git-credential-manager-for-windows kubernetes-cli nodejs python rsat sql-server-management-studio terraform vagrant vault vmware-powercli-psmodule vscode winpcap wireshark notepadplusplus powershell Fiddler Wireshark slack vlc sysinternals glogg nitroreader.install imgburn winpcap  wincdemu terminals puttytray flashplayerplugin  -Confirm:$false -Force
Import-Module Boxstarter.WinConfig
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

pip install awsebcli --upgrade --user

install-module sqlserver
install-module azuread

#required to be able to build node-gyp
npm install --global --production windows-build-tools

#install serverless (don't run as admin)
npm install serverless -g

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebServerRole"

#fix for RunAsDifferentUser missing in Windows Explorer context menu
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
$Name = "ShowRunasDifferentuserinStart"
$value = "1"
New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force

#installed manually
# securecrt - plus backed up config
# postman
# mongodb compass
# RSAT tools for Win10 @ \\it\TechnicalServices\Installs\Remote Server Admin Tool
# added C:\Users\terrir\AppData\Roaming\npm to the System PATH
# vmware remote client and horizon client
# add %USERPROFILE%\AppData\Roaming\Python\Python37\Scripts to System PATH
