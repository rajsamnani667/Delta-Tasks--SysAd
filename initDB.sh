#!/bin/bash

#createing databases
#creating users
echo " create DB 'alpha' and table 'MoMDB' "
sudo mysql -u root -e "create DB alpha;" -e "use alpha;" -e "create table MoMDB(date varchar(15) NOT NULL, author varchar(15) NOT NULL, content varchar(1500), PRIMARY KEY(date));"


# create uses JayJay(root) with full permissions to the DB
echo "create user 'JayJay' with full permissions"
sudo mysql -u root -e "CREATE USER 'JayJay'@'%' IDENTIFIED BY 'earth143';" -e "GRANT ALL PRIVILEGES ON alpha.* TO JayJay'@'%';" -e "FLUSH PRIVILAGES;"

# create uses non_root with read-only permissions to the DB
echo "create user 'non_root' with full permissions"
sudo mysql -u root -e "CREATE USER 'non_root'@'%' IDENTIFIED BY 'nonroot143';" -e "GRANT select ON alpha.* TO non_root'@'%';" -e "FLUSH PRIVILAGES;"

# create uses Abhinav with sql_native_password 
echo "create user 'Abhinav' with full permissions"
sudo mysql -u root -e "CREATE USER 'Abhinav'@'%' IDENTIFIED WITH mysql_native_password BY 'superuserpass';" -e "GRANT ALL PRIVILEGES ON *.* TO Abhinav'@'%';" -e "FLUSH PRIVILAGES;"

#create lacal table for users
echo "Create local table 'users' for authority purpose"
sudo mysql -u root -e "USE alpha;" -e "CREATE TABLE users(username varchar(20) NOT NULL, password varchar(20)NOT NULL, PRIMARY KEY(username));"

#inserting Users in local table 
echo "Inserting 'abhinav' as user"
sudo mysql -u root alpha -e "INSERT INTO users (username,password) values('Abhinav','superuserpass')"
echo "Inserting 'JayJay' as user"
sudo mysql -u root alpha -e "INSERT INTO users (username,password) values('JayJay','earth143')"
echo "Inserting non_root as user"
sudo mysql -u root alpha -e "INSERT INTO users (username,password) values('non_root','nonroot143')"


