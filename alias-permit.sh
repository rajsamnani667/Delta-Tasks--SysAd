#!/bin/bash

alias permit='
              for u in {01..30..1}
              do
                   chown sysAd_$u /home/sysAd_$u
              done
              
              
              for u in {01..30..1}
              do
                   chown webdev_$u /home/webdev_$u
              done
              
              
              for u in {01..30..1}
              do
                   chown appdev_$u /home/appdev_$u
              done
              
              
              for u in {21..30..1}
              do 
                   chgrp sysAd_4thyear /home/sysAd_$u
                   chmod 700 /home/sysAd_$u
              done
              
              
              
              for u in {21..30..1}
              do 
                   chgrp webdev_4thyear /home/webdev_$u
                   chmod 700 /home/webdev_$u
              done
              
              
              
              for u in {21..30..1}
              do 
                   chgrp appdev_4thyear /home/appdev_$u
                   chmod 700 /home/appdev_$u
              done
              
              
              
              for u in {11..20..1}
              do
                   chgrp sysAd_3rdyear /home/sysAd_$u
                   chmod 700 /home/sysAd_$u
              done
              
              
              
              for u in {11..20..1}
              do 
                   chgrp webdev_3rdyear /home/webdev_$u
                   chmod 700 /home/webdev_$u
              done
              
              
              for u in {11..20..1}
              do 
                   chgrp appdev_3rdyear /home/appdev_$u
                   chmod 700 /home/appdev_$u
              done
              
              
              
              for u in {01..10..1}
              do 
                   chgrp sysAd_2ndyear /home/sysAd_$u
                   chmod 700 /home/sysAd_$u
              done
              
              
              for u in {01..10..1}
              do 
                   chgrp webdev_2ndyear /home/webdev_$u
                   chmod 700 /home/webdev_$u
              done
              
              
              
              for u in {01..10..1}
              do
                   chgrp appdev_2ndyear /home/appdev_$u
                   chmod 700 /home/appdev_$u
              done
              
              
              
              for u in {21..30..1}
              do 
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              
              for u in {21..30..1}
              do 
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              for u in {21..30..1}
              do 
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              for u in {11..20..1}
              do
                   setfacl -m d:g:sysAd_4thyear:r /home/sysAd_$u
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              
              for u in {11..20..1}
              do 
                   setfacl -m d:g:webdev_4thyear:r /home/webdev_$u
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              
              for u in {11..20..1}
              do 
                   setfacl -m d:g:appdev_4thyear:r /home/appdev_$u
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              
              for u in {01..10..1}
              do 
                   setfacl -m d:g:sysAd_4thyear:r /home/sysAd_$u
                   setfacl -m d:g:sysAd_3rdyear:r /home/sysAd_$u
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              
              for u in {01..10..1}
              do 
                   setfacl -m d:g:webdev_4thyear:r /home/webdev_$u
                   setfacl -m d:g:webdev_3rdyear:r /home/webdev_$u
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              
              
              
              for u in {01..10..1}
              do
                   setfacl -m d:g:appdev_4thyear:r /home/appdev_$u
                   setfacl -m d:g:appdev_3rdyear:r /home/appdev_$u
                   setfacl -m d:u:Jay_Jay:rwx /home/sysAd_$u
              done
              '