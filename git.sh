#!/bin/bash

projects=(.\/
djangotailoring
surveytracking
tailoring2
myauth
myselector
mycoach
mytailoring
mypublisher
myloader
myexporter
myemailer
mypump
myusage
mylogger
mytournament15
nts
mydata14
mydata13
mydata12
mydata16
mydata17
mydata18
mydata19
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

# no longer updateing
#mydata4
#mydata6
#mydata7
#mydata8
#mydata9
#mytournament

