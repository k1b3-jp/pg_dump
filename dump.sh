#!/bin/bash

BACKUP_FILE="dump/backup_$(date +'%Y-%m-%d').sql"

pg_dump -h $POSTGRES_HOST -p $POSTGRES_PORT -U $POSTGRES_USER -d $POSTGRES_DB -v -f $BACKUP_FILE && ls $BACKUP_FILE

# 一週間以上前のやつ削除
ls ./dump | sort -r | sed -e '1,7d' | xargs -I {} rm "./dump/{}"

echo "Dump complete!"