#!/bin/bash


alias attendence='

                  read -p "Enter 1st date: " Date1 
                  
                  read -p "Enter 2nd date: " Date2 
                  
                  
                  while read a1 a2 a3 a4
                  do
                  
                  
                  for u in {01..30..1}
                  do
                    if [ "$a3" = "$Date1," -a "$a1" = "sysAd_$u" -o "$a3" = "$Date2," -a "$a1" = "sysAd_$u" ]; 
                    then
                       echo "$a1"
                    else
                       if [ "$a1" != "sysAd_$u" ];
                       then    
                           echo "sysAd_$u" "$a2" "$a3"
                       fi
                    fi
                  done   
                  
                       
                  for u in {01..30..1}
                  do
                    if [ "$a3" = "$Date1," -a "$a1" = "webdev_$u" -o "$a3" = "$Date2," -a "$a1" = "webdev_$u" ]; 
                    then
                       echo "$a1"
                    else
                       if [ "$a1" != "webdev_$u" ];
                       then    
                           echo "webdev_$u" "$a2" "$a3"
                       fi
                    fi
                  done   
                  
                  
                  for u in {01..30..1}
                  do
                    if [ "$a3" = "$Date1," -a "$a1" = "appdev_$u" -o "$a3" = "$Date2," -a "$a1" = "appdev_$u" ]; 
                    then
                       echo "$a1"
                    else
                       if [ "$a1" != "appdev_$u" ];
                       then    
                           echo "appdev_$u" "$a2" "$a3"
                       fi
                    fi
                  done   
                  
                  done < attendence.log
                  '