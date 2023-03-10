# set microsoft key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo 'deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main' | sudo tee /etc/apt/sources.list.d/vscode.list
rm -f packages.microsoft.gpg

# install vscode
sudo apt-get update
sudo apt-get install -y code


# install vscode extension
code --install-extension azapi-vscode.azapi
code --install-extension msazurermtools.azurerm-vscode-tools
code --install-extension chef-software.chef
code --install-extension ms-vscode.azure-account
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension rebornix.ruby
code --install-extension redhat.vscode-yaml
code --install-extension amazonwebservices.aws-toolkit-vscode
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-azureterraform
code --install-extension VisualStudioExptTeam.vscodeintellicode

# verify
code --version
which code
