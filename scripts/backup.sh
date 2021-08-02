echo "Zipping world"
zip backup.zip -r ../minecraft-server/worlds/'Jacky and Wing World'

echo "Uploading to Object Storage"

# Using Default Configuration
oci os object put --namespace <object_storage_namespace> --bucket-name <bucket_name> --file <file_location> [--name <object_name>] [--storage-tier <object_storage_tier>] --no-multipart

echo "succcessfully upload"