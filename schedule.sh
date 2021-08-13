#!/bin/bash

# this file is schedule.sh file as mentioned in task

# to update crontab and run this file at midnight everyday
crontab -e 
0  0  *  *  * /home/Jay_Jay/3.sh

today=$(date +%F)
while read a1 a2
do    
if [ "$a1" = "$today" ];
then   
m=$a1" "$a2" ""Meeting is scheduled"  

#for sysAd users 
for u in {01..30..1}
do
   touch ../sysAd_$u schedule.txt
   echo "$m" > ../sysAd_$u/schedule.txt
done

#for webdev users
for u in {01..30..1}
do
   touch ../webdev_$u schedule.txt
   echo "$m" > ../webdev_$u/schedule.txt
done

#for appdev users
for u in {01..30..1}
do
   touch ../appdev_$u schedule.txt
   echo "$m" > ../appdev_$u/schedule.txt
done

fi
done < future.txt