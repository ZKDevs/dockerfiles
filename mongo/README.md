## Usage

```
docker run -d --name mongodb-container \
  -e MONGO_HOST=root
  -e MONGO_PORT=27017 \
  -e MONGO_USER=user
  -e BACKUP_PERIODICITY=hourly \
  -e BACKUP_FOLDER=/custom_backup_location \
  -e BACKUP_SCRIPT=backup.sh
  -e MONGOD_CONF=./default-config/mongod.conf
  -v /path/to/custom-config:/config \
  mongodb-backup
```