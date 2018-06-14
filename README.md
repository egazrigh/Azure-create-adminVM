# Azure-create-adminVM

A packer template to build an Windows Administration VM on Azure

Builded image can be customized by providing a list of :
- Chocolatey packages (separated by spaces)
- Windows Features (Powershell Windows Features names separated by comma) 
- Powershell PSGallery Modules names separated by comma

# Pre-requisite
An Azure Packer Infra : https://github.com/egazrigh/Azure-create-packer-infra.git

# Usage

Can add a packer_variable.json file to configure theses variables :
```JSON
{
    "subscription_id": "",
    "tenant_id": "",
    "client_id": "",
    "client_secret": "",
    "managed_image_resource_group_name": "Packer-Builded-Images",
    "location": "francecentral",
    "projectname" : "Packer",
    "owner" : "Eric",
    "billing" : "Bibi",
    "environment" : "Test",
    "build_date" : "2018_06_14",
    "choco_packages": "7zip putty.install sysinternals notepadplusplus git AzureStorageExplorer packer terraform vscode googlechrome AzurePowerShell poshgit pester",
    "windowsfeatures": "Web-Server,Remote-Desktop-Services,RSAT,RSAT-RDS-Tools,RSAT-File-Services,Web-Mgmt-Console",
    "powershell_psgallery_modules" : "PoshRSJob,Posh-SSH"
}
```
Then run :
```
packer build var-file .\packer_variables.json Win2016_Azure_AdminVM.json
or 
packer build var-file=.\packer_variables.json Win2016_Azure_AdminVM.json
```

# ToDo
- Resolve vscode extension that are not retained after sysprep
- Add more customization eventually using a post install script 
-- Powershell profiles
-- Git Profile
-- Clone Git Repos
