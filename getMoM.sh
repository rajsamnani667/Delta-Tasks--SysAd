#!/bin/bash

#getting MoMs

start_date=$1
end_date=$2
output="/home/Jay_Jay/MoMs.txt"
t1=0
t2=0
sudo rm -rf /home/Jay_Jay/MoMs.txt
echo "MoMDate  MoMTaker  MoMPath" >>$output

if [ -z $start_date ] && [ -z $end_date]
then
    echo "Specify Dates"
else
    currentdate=$start_date
    while i=' ' read -r name ignore date tyme
    do 
        if [ "${date%,}" = "$currentdate"]
        then 
            t1=1
        fi
        if [ $t1 -ge 1 ]
        then
             id=$(echo "$name" | cut -d'_' -f2)
             if [ $id -le 10 ]
             then

             last2ndyr=$name
            fi
            if [ "${date%,}" != "$currentdate" ]
            then
               echo "taking MoM for $currentdate from $last2ndyr directory"
               echo "$currentdate $last2ndyr /user/$last2ndyr/${currentdate}_MoM.txt" >> $output 
               currentdate=${date%,}
            fi
            if [ "$end_date" = "$date" ]
            then
               t2=1
            fi
            if [ $t2 -ge 1 ] && [ "$end_date" ]
            then
                exit
            fi
        fi
    done < attendance.log
fi

    
