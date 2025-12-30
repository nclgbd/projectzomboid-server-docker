timestamp=$(date +"%y/%m/%d")
aws s3 cp server-data s3://pzserver-ratcord/backups/$timestamp/server-data --recursive
aws s3 cp server-files s3://pzserver-ratcord/backups/$timestamp/server-files --recursive
aws s3 sync s3://pzserver-ratcord/backups/$timestamp/server-data s3://pzserver-ratcord/backups/latest/server-data
aws s3 sync s3://pzserver-ratcord/backups/$timestamp/server-files s3://pzserver-ratcord/backups/latest/server-files