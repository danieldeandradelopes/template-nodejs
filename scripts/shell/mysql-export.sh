#!/bin/sh

# Backup
docker exec mysql /usr/bin/mysqldump -u root --password=root fix_live > ./scripts/sql/backup.sql