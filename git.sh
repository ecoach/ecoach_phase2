#!/bin/bash

projects=(.\/
djangotailoring
surveytracking
tailoring2
myselector
mydata4
mycoach
mypublisher
myloader
myexporter
mypump
myusage
mylogger
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

