# MariaDB_RocksDB - MyRocks
Run a dockerized version of MariaDB with RocksDB as an additionaly installed storage engine!

Try the following:
- mkdir do_myrocks
- git clone https://github.com/eLetter-Greece/do_myrocks
- cd do_myrocks
- docker build -t do_myrocks .
- docker run -d -p 3336:3306 --name myrocks -e MYSQL_ROOT_PASSWORD=my-secret-pw do_myrocks
- $mysql -uroot -pmy-secret-pw -hdocker_ip -P3336
and when you are logged in check if everything is ok by typing: show engines;

