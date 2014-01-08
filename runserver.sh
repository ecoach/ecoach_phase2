#!/bin/sh

mysql.server start 
# /usr/local/var/mysql/*.pid <<< file location
# /usr/local/bin/mysql.server --help
# Usage: mysql.server  {start|stop|restart|reload|force-reload|status}

# this works...
# ps aux | grep mysql
# kill -15 ###
# where ### is the pid of bin/mysqld


if [[ $1 == "pick" ]] ; then
    # mts4 is now the picker too!
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=myselector.settings
    #sudo python manage.py runserver localhost:80 --settings=mydata4.settings
    #sudo python manage.py runserver 0.0.0.0:80 --settings=mydata4.settings
elif [[ $1 == "mts4" ]] ; then
    source ~/virtualenv/v1/bin/activate
    #source ~/virtualenv/v4/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata4.settings
    #sudo python manage.py runserver 0.0.0.0:80 --settings=mydata4.settings
elif [[ $1 == "mts6" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata6.settings
elif [[ $1 == "mts7" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata7.settings
elif [[ $1 == "mts8" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata8.settings
elif [[ $1 == "mts9" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata9.settings
elif [[ $1 == "mts14" ]] ; then
    source ~/virtualenv/v4/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata14.settings
elif [[ $1 == "mts13" ]] ; then
    source ~/virtualenv/v4/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata13.settings
elif [[ $1 == "mts12" ]] ; then
    source ~/virtualenv/v4/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata12.settings
elif [[ $1 == "mts16" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata16.settings
elif [[ $1 == "mts17" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata17.settings
elif [[ $1 == "mts18" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata18.settings
elif [[ $1 == "mts19" ]] ; then
    source ~/virtualenv/v1/bin/activate
    cd ~/bitbucket/ecoach_webapps
    sudo python manage.py runserver localhost:80 --settings=mydata19.settings
else
    echo "myrunserver < pick | mts0 | mts1 | ... | mtsX > to pick app"
fi



