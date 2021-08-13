#!/bin/bash

# add the content of all MoM.txt to the SQL DB

i=0
while input=' ' read -r name ignore date tyme
do
   if [ $i -le 0]
   then
       currentdate=${date%,}
       i=1
   fi
   id=$( echo "$name" | cut -d'_' -f2)
   if [ $id -le 10]
   then
       last2ndyr=$name
   fi
   if [ "${date%,}"] != "$currentdate"
   then
       echo "Pulling MoM for $currentdate from $last2ndyr directory and adding to Table MoMDB"
       MoMfile="/home/$last2ndyr/${date%,}_MoM.txt"
       content=$(<$momfile)
       sudo mysql -u root alpha -e "INSERT INTO MoMDB (date ,author,content) VALUES ('$currentdate' , '$last2ndyr' , '$content' );"
       currentdate = ${date%,}
   fi
done < attendance.log
