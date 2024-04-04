#!/bin/bash
# バックアップファイルの復元

# BACKUP_FILE=$(ls dump/backup_*.sql | sort -r | head -n 1)

# until pg_isready -h $POSTGRES_HOST -p $POSTGRES_PORT; do
#     echo "Waiting for database to start..."
#     sleep 1
# done

# psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U $POSTGRES_USER -d $POSTGRES_DB -f $BACKUP_FILE

# echo "Restore complete!"