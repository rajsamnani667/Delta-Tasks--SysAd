#!/bin/bash

# Head of AlphaQ
useradd -m Jay_Jay


#for adding sysAd user
for u in {01..30..1}
do 
    useradd -m sysAd_$u
done


#for adding webdev user
for u in {01..30..1}
do 
    useradd -m webdev_$u
done


#for adding appdev user
for u in {01..30..1}
do 
    useradd -m appdev_$u
done 


#for sysAd(4thyear)
groupadd sysAd_4thyear
for u in {21..30..1}
do 
     gpasswd -a sysAd_$u sysAd_4thyear
done


#for webdev(4thyear)
groupadd webdev_4thyear
for u in {21..30..1}
do 
     gpasswd -a webdev$u webdev_4thyear
done


#for appdev(4thyear)
groupadd appdev_4thyear
for u in {21..30..1}
do 
     gpasswd -a appdev_$u appdev_4thyear
done


#for sysAd(3rdyear)
groupadd sysAd_3rdyear
for u in {11..20..1}
do 
     gpasswd -a sysAd_$u sysAd_3rdyear
done


#for webdev(3rdyear)
groupadd webdev_3rdyear
for u in {11..20..1}
do 
     gpasswd -a webdev_$u webdev_3rdyear
done


#for appdev(3rdyear)
groupadd appdev_3rdyear
for u in {11..20..1}
do 
     gpasswd -a appdev_$u appdev_3rdyear
done


#for sysAd(2ndyear)
groupadd sysAd_2ndyear
for u in {01..10..1}
do 
     gpasswd -a sysAd_$u sysAd_2ndyear
done


#for webdev(2ndyear)
groupadd webdev_2ndyear
for u in {01..10..1}
do 
     gpasswd -a webdev_$u webdev_2ndyear
done


#for appdev(2ndyear)
groupadd appdev_2ndyear
for u in {01..10..1}
do 
     gpasswd -a appdev_$u appdev_2ndyear
done