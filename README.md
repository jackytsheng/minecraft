# minecraft-backup

This is a repo for all my minecraft stuff.
also include set up for cloud Instance to download my world when hosting

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
