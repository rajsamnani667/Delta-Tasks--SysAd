#!/bin/bash

#reset the SQL DB

echo "Dropping DB"
sudo mysql -u root -e "DROP DATABASE alpha;"

echo "Dropping user 'JayJay'"
sudo mysql -u root -e "DROP USER 'JayJay'@'%';"
echo "JayJay dropped"

echo "Dropping user 'non_root'"
sudo mysql -u root -e "DROP USER 'non_root'@'%';"
echo "non_root dropped"

echo "Dropping user 'Abhinav'"
sudo mysql -u root -e "DROP USER 'Abhinav'@'%';"
echo "Abhinav dropped"

