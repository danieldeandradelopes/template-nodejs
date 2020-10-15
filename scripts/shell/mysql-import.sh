#!/bin/sh

# Restore
set echo of
echo "Excluido database fix_live...";
docker exec -i mysql /usr/bin/mysql --user="root" --password="root" --execute="DROP DATABASE fix_live;" 2> /dev/null
echo "Criando database fix_live...";
docker exec -i mysql /usr/bin/mysql --user="root" --password="root" --execute="CREATE DATABASE fix_live;" 2> /dev/null
echo "Realizando importação de dados...";
cat ./scripts/sql/backup.sql | docker exec -i mysql /usr/bin/mysql --user="root" --password="root" --database="fix_live" 2> /dev/null
