#/usr/bin/env bash
cd /workspace
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip
cd $THEIA_WORKSPACE_ROOT

# Create AWS credentials and config directories
mkdir -p ~/.aws

# Set AWS credentials
echo "[default]" > ~/.aws/credentials
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> ~/.aws/credentials
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> ~/.aws/credentials

# Set AWS region and output format
echo "[default]" > ~/.aws/config
echo "region=$AWS_REGION" >> ~/.aws/config
echo "output=json" >> ~/.aws/config

# Set permissions for the credentials and config files
chmod 600 ~/.aws/credentials ~/.aws/config