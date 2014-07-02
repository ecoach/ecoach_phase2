#!/bin/bash

shopt -s extglob
set -x

export SCRIPT_DIR="$PWD"

projects=(ecoach_webapps
djangotailoring
surveytracking
tailoring2
myauth
myselector
mytailoring
mypublisher
myloader
myexporter
myemailer
myusage
mylogger
mytournament15
mytournament13
nts
mydata6
mydata7
mydata8
mydata9
mydata16
mydata17
mydata18
mydata19
mydata14
)

for i in "${projects[@]}"
do
    printf "\n----------%s--------------\n" $i
    git clone git@github.com:ecoach/$i.git
    rm -rf $i/.git
done

cp -rp ecoach_webapps/. .
rm -rf ecoach_webapps

exit

