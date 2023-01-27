# install prerequisites
sudo apt-get update 
sudo apt-get install -y gnupg software-properties-common

# set microsoft key
wget -qO- https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
rm -f hashicorp.gpg

# install azurecli
sudo apt-get update
sudo apt-get install -y terraform

# verify
terraform --version
which terraform
