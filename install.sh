#/bin/bash

echo "database"
docker cp dump.sql mydb:/
#docker exec -i mydb /bin/bash/mysql -u root --password=Seguro##2022 tula < dump.sql

cat dump.sql | docker exec -i mydb /usr/bin/mysql -u root --password=Seguro##2022 tula


