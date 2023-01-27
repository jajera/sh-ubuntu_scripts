# download and install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# housekeep
rm -rf awscliv2.zip
rm -rf aws/

# verify
aws --version
which aws
