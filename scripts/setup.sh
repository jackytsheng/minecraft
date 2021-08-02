mkdir minecraft-server

# Update Instance
sudo apt-get update

# Firewall
apt install firewalld

# Install Editor
apt install vim

# Install unzip 
apt install unzip

# Install zip
apt install zip

# Install Oracle-CLI
bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"

# copy start script inside minecraft-server
cp ./start.sh ../minecraft-server