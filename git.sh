#!/bin/bash

projects=(.\/
djangotailoring
myemailer
mypump
surveytracking
tailoring2
myselector
mycoach0
mycoach1
mycoach2
mycoach3
mycoach5
mydata0
mydata1
mydata2
mydata3
mydata5
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

