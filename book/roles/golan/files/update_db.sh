#!/bin/bash
DB_FILE=shula-na-`date +\%Y\%m\%d`0300.sql.gz
#DB_FILE=shula-na-201506270300.sql.gz
DB_FILE_NAME=shula-na-`date +\%Y\%m\%d`0300.sql
#DB_FILE_NAME=shula-na-201506270300.sql
DB_FILE=$DB_FILE_NAME.gz
DB_FILE_DIR=/tmp
DB_NAME=gtcrm
echo "Start Copy to " $DB_NAME ",date:" `date +\%Y\%m\%d_%T`
scp gt@10.162.10.27:/mnt/dbbackups/$DB_FILE $DB_FILE_DIR
cd /tmp/
gunzip --force  $DB_FILE
#rm $DB_FILE
echo "Start DB dumping" `date +\%Y\%m\%d_%T`
mysql -uroot -pearth12 $DB_NAME <  $DB_FILE_DIR/$DB_FILE_NAME
echo "deleting the file" `date +\%Y\%m\%d_%T`
rm $DB_FILE_DIR/$DB_FILE_NAME
echo "finish" `date +\%Y\%m\%d_%T`

