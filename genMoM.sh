#!/bin/bash

i=0
while input=' ' read -r ignore date tyme
do
   if [ $i -le 0 ]
   then
       currentdate=${date%,}
       i=1
   fi
   id=$(echo "$name" | cut -d'_' -f2)
   if [$id -le 10]
   then
       last2ndyr=$name
   fi
   if [ "${date%,}" != "$currentdate"]
   then 
       echo "creating MoM for $currentdate on $last2ndyr directory"
       output="/home/$last2ndyr/${date%,}_MoM.txt"
       echo "xyz -- $currentdate" >> $output
       currentdate=${date%,}
    fi
done < attendance.log
