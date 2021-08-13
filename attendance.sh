#!/bin/bash

#format ./attendance.sh     For displaying all absent users in all dates in the log file
#       ./attendance.sh <starting-date> <ending-date> (without angle brackets)     For absentees between two given dates
# all dates should be in YYYY-MM-DD format


start_date=$1
end_date=$2
i=0
t1=0
if [ -z $startdate ] && [ -z $enddate ]
then
    while input=' ' read -r col1 col2 col3 col4
    do
        if [ $i -le 0 ]
        then
            date="${col3%,}"
            i=99
        fi
        if [ "${col3%,}" = "$date" ]
        then
            currentdate=$col3
            echo $col1 >> temp.txt
        else
            date="${col3%,}"
            for user in `cat users.txt`
            do
                for users in `cat temp.txt`
                do
                    p=0 #present
                    if [ "$users" = "$user" ]
                    then
                        p=1
                        break
                    fi
                done
                if [ $p -le 0 ]
                then
                    echo "$user was absent on ${currentdate%,}"
                fi
            done
            >temp.txt
        fi
    done < attendance.log
    for user in `cat users.txt`
    do
        for users in `cat temp.txt`
        do
            p=0
            if [ "$users" = "$user" ]
            then
                p=1
                break
            fi
        done
        if [ $p -le 0 ]
        then
            echo "$user was absent on ${currentdate%,}"
        fi
    done
    >temp.txt
    rm -rf ./temp.txt
else
    while input=' ' read -r col1 col2 col3 col4
    do
        if [ $i -le 0 ]
        then
          date="$1"
          i=99
        fi
        if [ "${col3%,}" = "$date" ]
        then
            currentdate=$col3
            echo $col1 >> temp.txt
        else
            date="${col3%,}"
            if [ "${col3%,}" = "$2" ]
            then
                t1=1
            fi
            for user in `cat users.txt`
            do
                for users in `cat temp.txt`
                do
                    p=0 #present
                    if [ "$users" = "$user" ]
                    then
                        p=1
                        break
                    fi
                done
                if [ $p -le 0 ]
                then
                    echo "$user was absent on ${currentdate%,}"
                fi
            done
            >temp.txt
            if [ $t1 -ge 1 ] && [ "${col3%,}" != "$2" ]
            then
                rm -rf ./temp.txt
                exit
            fi
        fi
    done < attendance.log   
fi