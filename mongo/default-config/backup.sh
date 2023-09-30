#!/bin/bash

DEFAULT_BACKUP_FOLDER="/backup"
BACKUP_FOLDER="${BACKUP_FOLDER:-$DEFAULT_BACKUP_FOLDER}"

mkdir -p "$BACKUP_FOLDER"

BACKUP_FOLDER="$BACKUP_FOLDER/$(date +%Y%m%d%H%M%S)"

mongodump --host "$MONGO_HOST" --port "$MONGO_PORT" --username "$MONGO_USER" --password "$MONGO_PASSWORD" --out "$BACKUP_FOLDER"

tar czf "${BACKUP_FOLDER}.tar.gz" "$BACKUP_FOLDER"

rm -rf "$BACKUP_FOLDER"

echo "Backup completed at $(date)"
