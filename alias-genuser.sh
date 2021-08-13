#!/bin/bash

alias genuser='
                 useradd -m Jay_Jay
                 
                 
                
                 for u in {01..30..1}
                 do 
                     useradd -m sysAd_$u
                 done
                 
                 
                 
                 for u in {01..30..1}
                 do 
                     useradd -m webdev_$u
                 done
                 
                 
                 
                 for u in {01..30..1}
                 do 
                     useradd -m appdev_$u
                 done 
                 
                 
                 
                 groupadd sysAd_4thyear
                 for u in {21..30..1}
                 do 
                      gpasswd -a sysAd_$u sysAd_4thyear
                 done
                 
                 
                 
                 groupadd webdev_4thyear
                 for u in {21..30..1}
                 do 
                      gpasswd -a webdev$u webdev_4thyear
                 done
                 
                 
            
                 groupadd appdev_4thyear
                 for u in {21..30..1}
                 do 
                      gpasswd -a appdev_$u appdev_4thyear
                 done
                 
                 
                 
                 groupadd sysAd_3rdyear
                 for u in {11..20..1}
                 do 
                      gpasswd -a sysAd_$u sysAd_3rdyear
                 done
                 
                 
                 
                 groupadd webdev_3rdyear
                 for u in {11..20..1}
                 do 
                      gpasswd -a webdev_$u webdev_3rdyear
                 done
                 
                 
                 
                 groupadd appdev_3rdyear
                 for u in {11..20..1}
                 do 
                      gpasswd -a appdev_$u appdev_3rdyear
                 done
                 
                 
                 
                 groupadd sysAd_2ndyear
                 for u in {01..10..1}
                 do 
                      gpasswd -a sysAd_$u sysAd_2ndyear
                 done
                 
                 
                 
                 groupadd webdev_2ndyear
                 for u in {01..10..1}
                 do 
                      gpasswd -a webdev_$u webdev_2ndyear
                 done


                 
                 groupadd appdev_2ndyear
                 for u in {01..10..1}
                 do 
                      gpasswd -a appdev_$u appdev_2ndyear
                 done'
