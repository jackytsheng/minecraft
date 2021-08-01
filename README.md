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
