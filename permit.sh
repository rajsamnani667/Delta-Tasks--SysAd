#!/bin/bash

#for sysAd users
for u in {01..30..1}
do
     chown sysAd_$u /home/sysAd_$u
done

#for webdev users
for u in {01..30..1}
do
     chown webdev_$u /home/webdev_$u
done

#for appdev users
for u in {01..30..1}
do
     chown appdev_$u /home/appdev_$u
done


#for sysAd(4thyear)
for u in {21..30..1}
do 
     chgrp sysAd_4thyear /home/sysAd_$u
     chmod 700 /home/sysAd_$u
done


#for webdev(4thyear)
for u in {21..30..1}
do 
     chgrp webdev_4thyear /home/webdev_$u
     chmod 700 /home/webdev_$u
done


#for appdev(4thyear)
for u in {21..30..1}
do 
     chgrp appdev_4thyear /home/appdev_$u
     chmod 700 /home/appdev_$u
done


#for sysAd(3rdyear)
for u in {11..20..1}
do
     chgrp sysAd_3rdyear /home/sysAd_$u
     chmod 700 /home/sysAd_$u
done


#for webdev(3rdyear)
for u in {11..20..1}
do 
     chgrp webdev_3rdyear /home/webdev_$u
     chmod 700 /home/webdev_$u
done


#for appdev(3rdyear)
for u in {11..20..1}
do 
     chgrp appdev_3rdyear /home/appdev_$u
     chmod 700 /home/appdev_$u
done


#for sysAd(2ndyear)
for u in {01..10..1}
do 
     chgrp sysAd_2ndyear /home/sysAd_$u
     chmod 700 /home/sysAd_$u
done


#for webdev(2ndyear)
for u in {01..10..1}
do 
     chgrp webdev_2ndyear /home/webdev_$u
     chmod 700 /home/webdev_$u
done


#for appdev(2ndyear)
for u in {01..10..1}
do
     chgrp appdev_2ndyear /home/appdev_$u
     chmod 700 /home/appdev_$u
done


#for sysAd(4thyear)
for u in {21..30..1}
do 
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for webdev(4thyear)
for u in {21..30..1}
do 
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for appdev(4thyear)
for u in {21..30..1}
do 
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for sysAd(3rdyear)
for u in {11..20..1}
do
     setfacl -m d:g:sysAd_4thyear:r /home/sysAd_$u
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for webdev(3rdyear)
for u in {11..20..1}
do 
     setfacl -m d:g:webdev_4thyear:r /home/webdev_$u
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for appdev(3rdyear)
for u in {11..20..1}
do 
     setfacl -m d:g:appdev_4thyear:r /home/appdev_$u
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for sysAd(2ndyear)
for u in {01..10..1}
do 
     setfacl -m d:g:sysAd_4thyear:r /home/sysAd_$u
     setfacl -m d:g:sysAd_3rdyear:r /home/sysAd_$u
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for webdev(2ndyear)
for u in {01..10..1}
do 
     setfacl -m d:g:webdev_4thyear:r /home/webdev_$u
     setfacl -m d:g:webdev_3rdyear:r /home/webdev_$u
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done


#for appdev(2ndyear)
for u in {01..10..1}
do
     setfacl -m d:g:appdev_4thyear:r /home/appdev_$u
     setfacl -m d:g:appdev_3rdyear:r /home/appdev_$u
     setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
done
