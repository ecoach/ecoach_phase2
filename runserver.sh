#!/bin/sh

mysql.server start 
#--pid-file=~/mypid

if [[ $1 == "pick" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    #sudo python manage.py runserver localhost:80
    #sudo python manage.py runserver localhost:80 --settings=mysettings.settings_pick
    sudo python manage.py runserver 0.0.0.0:80 --settings=myselector.settings
elif [[ $1 == "mts0" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mycoach0.settings
elif [[ $1 == "mts1" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mycoach1.settings
elif [[ $1 == "mts2" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mycoach2.settings
elif [[ $1 == "mts3" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mycoach3.settings
elif [[ $1 == "mts4" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    #sudo python manage.py runserver localhost:80 --settings=mysettings.settings_mts4
    sudo python manage.py runserver 0.0.0.0:80 --settings=mydata4.settings
elif [[ $1 == "mts5" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mycoach5.settings
else
    echo "myrunserver < pick | mts0 | mts1 | ... | mtsX > to pick app"
fi


