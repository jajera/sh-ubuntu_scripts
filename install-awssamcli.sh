# download and install
curl -L "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip" -o "aws-sam-cli-linux-x86_64.zip"
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
sudo ./sam-installation/install

# housekeep
rm -rf aws-sam-cli-linux-x86_64.zip
rm -rf sam-installation

# verify
sam --version
which sam
