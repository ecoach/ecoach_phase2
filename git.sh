#!/bin/bash

projects=(.\/
djangotailoring
surveytracking
tailoring2
myselector
mycoach
mydata4
)

#export SCRIPT_DIR=$(cd ..; pwd)
export SCRIPT_DIR=$(pwd)

for i in "${projects[@]}"
do
    echo ----------$i--------------
    #cd $SRC_DIR\/$i
    cd $SCRIPT_DIR\/$i
    git $1
done

