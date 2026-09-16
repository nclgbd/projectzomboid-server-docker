timestamp=$(date +"%y/%m/%d")
SERVER_NAME=pzserver-pokemulti
aws s3 mb s3://$SERVER_NAME
aws s3 cp server-data s3://$SERVER_NAME/backups/$timestamp/server-data --recursive
aws s3 cp server-files s3://$SERVER_NAME/backups/$timestamp/server-files --recursive
aws s3 sync s3://$SERVER_NAME/backups/$timestamp/server-data s3://$SERVER_NAME/backups/latest/server-data
aws s3 sync s3://$SERVER_NAME/backups/$timestamp/server-files s3://$SERVER_NAME/backups/latest/server-files