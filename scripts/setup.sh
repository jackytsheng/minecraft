
mkdir mincraft-server

# Update Instance
sudo apt-get update

# Firewall
apt install firewalld

# Install Editor
apt install vim

# Install unzip 
apt install unzip

# install server
cd minecraft-server

curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.17.10.04.zip --output mc.zip

unzip mc.zip

# Delete the zip file once install
rm mc.zip