# Set the PowerShell execution policy to be able to run all scripts
Update-ExecutionPolicy Unrestricted

# Make the Windows Explorer tolerable
Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions

# Enable Remote Desktop to the box
Enable-RemoteDesktop

# Allow global confirmation for Chocolatey
choco feature enable -n allowGlobalConfirmation

# Chocolatey packages
cinst audacity
cinst brave
cinst ccleaner
cinst chocolateygui
cinst cmder
cinst curl
cinst docker-cli
cinst docker-compose
cinst docker-desktop
cinst dotnet-5.0-sdk
cinst dropbox
cinst filezilla
cinst firacode
cinst gimp
cinst git
cinst gitkraken
cinst golang
cinst greenshot
cinst ilspy
cinst inkscape
cinst kubernetes-cli
cinst lastpass
cinst libreoffice-fresh
cinst linqpad
cinst lunacy
cinst malwarebytes
cinst minikube
cinst nordvpn
cinst notepadplusplus
cinst nugetpackageexplorer
cinst obs-studio
cinst oh-my-posh
cinst poshgit
cinst postman
cinst powertoys
cinst psake
cinst protonmailbridge
cinst ravendb
cinst resharper
cinst rufus
cinst sass
cinst slack
cinst steam
cinst terraform
cinst thunderbird
cinst virtualbox
cinst visualstudio2019community
cinst vlc
cinst vscode-insiders
cinst wireshark
cinst 7zip

# Enable HyperV, IIS, and Telnet
cinst Microsoft-Hyper-V-All -source windowsFeatures
cinst IIS-WebServerRole -source windowsfeatures
cinst IIS-HttpCompressionDynamic -source windowsfeatures
cinst TelnetClient -source windowsFeatures

# Install all critical Windows updates
Install-WindowsUpdate -AcceptEula