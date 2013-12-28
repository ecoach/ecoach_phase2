#!/bin/bash

if [ -f '/home/jtritz/bitbucket/ecoach_webapps/reboot_flag.txt' ]; then
    /sbin/service httpd restart
    echo $USER > '/home/jtritz/bitbucket/ecoach_webapps/done.txt'
    rm '/home/jtritz/bitbucket/ecoach_webapps/reboot_flag.txt'
fi

