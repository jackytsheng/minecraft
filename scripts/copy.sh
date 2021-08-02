
echo 'Zipping world ...'
zip 
oci os object put --namespace <object_storage_namespace> --bucket-name <bucket_name> --file <file_location> [--name <object_name>] [--storage-tier <object_storage_tier>] --no-multipart
rm -r ../minecraft-server/worlds/'Jacky and Wing World'/*
cp -r ../minecraft-world/uK1tX4ZiBgA=/* ../minecraft-server/worlds/'Jacky and Wing World'
echo 'Finish copying'