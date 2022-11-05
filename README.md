# Minecraft

This is a repo for all my Minecraft stuff.
also include set up for cloud Instance to download my world when hosting

# Oracle Cloud Related

## How to create instance on Oracle Cloud

I made a [video](https://www.youtube.com/watch?v=K6tnVemsDQA&t=5s) in chinese

## How to delete unwanted chunk ?

- [Amulet](https://www.amuletmc.com/installing-from-source)\

```python
python -m amulet_map_editor
```

Link to my answer on [issue](https://github.com/Amulet-Team/Amulet-Map-Editor/issues/290#issuecomment-890292869) about ghost portal using amulet

- [Universal Minecraft Editor](https://www.universalminecrafteditor.com/5glXX1pcDtTpIhlScl37.html)

## Setting up ubuntu instance

```bash
sudo -s

sudo apt-get update

apt install git

./script setup.sh
```

## Copy world

`./scripts/copy.sh`

## Run game

`./scripts/start.sh`

## Configure Instance to use Oracle Cloud Object Storage

1. Generate apikey
   https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#Required_Keys_and_OCIDs

2. Configure /.oci/config
   https://docs.oracle.com/en/middleware/fusion-middleware/data-integrator/12.2.1.4/odikm/oracle-object-storage.html#GUID-6125C5CD-9FBE-4CCB-842A-35C68B5B7626

   https://docs.oracle.com/en-us/iaas/Content/API/Concepts/sdkconfig.htm

3. Create Object Storage and make it public

4. Upload to OCI
   https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/managingobjects.htm

## Backup

`apt install zip`

`oci os object put --namespace axglc9ft2935 --bucket-name mincraft-backup --file ./backupFromServer.zip --no-multipart`

# AWS EC2 related

After setting up a linus Image

Upgrade everything

```
apt-get update
apt install vim
apt install zip
apt install awscli


```

download the latest server

```
curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.19.40.02.zip --output mc.zip
```

after unzipping it then run the server in detach mode under `screen`

```
LD_LIBRARY_PATH=. screen -dmS bds ./bedrock_server
```

could use s3 to upload and download backup, make sure IAM user is created to perform this action

then use this to cp from s3 to ec2 or from ec2 to s3

```
aws s3 cp s3://jacky-minecraft-backup/<source> <dest>

```
