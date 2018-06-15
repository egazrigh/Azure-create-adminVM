Write-Output "Installing VS Code Extensions" >> C:\SetupComplete2.log
Set-PSRepository -InstallationPolicy Trusted -Name PSGallery
#Install-Module -Name {{user `powershell_psgallery_modules`}} -scope Allusers -verbose
Write-Output"Installing VS Code Extensions"
Push-Location "C:\Program Files\Microsoft VS Code\bin"
.\code --install-extension mauve.terraform
.\code --install-extension ms-vscode.powershell
.\code --install-extension ms-python.python
.\code --install-extension eamodio.gitlens
Pop-Location
