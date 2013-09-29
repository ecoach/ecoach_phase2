#!/bin/bash

projects=(.\/
djangotailoring
surveytracking
tailoring2
myselector
mycoach
mypublisher
myloader
myexporter
myemailer
mypump
myusage
mylogger
mytournament
nts
mydata4
mydata6
mydata7
mydata8
mydata9
)

#export SCRIPT_DIR=$(cd ..; pwd)
export SCRIPT_DIR=$(pwd)

for i in "${projects[@]}"
do
    printf "\n----------$i--------------\n"
    #cd $SRC_DIR\/$i
    cd $SCRIPT_DIR\/$i
    git $1
done

