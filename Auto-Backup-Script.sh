#!/bin/bash
BACKUP_DIR="/backup"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE="backup-$TIMESTAMP.tar.gz"
SRC_DIR="/var/www/html"

echo "🔹 Creating Backup..."
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$BACKUP_FILE $SRC_DIR

echo "✅ Backup Completed: $BACKUP_DIR/$BACKUP_FILE"
