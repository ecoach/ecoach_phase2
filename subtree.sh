#!/bin/bash

git subtree add --prefix djangotailoring git@github.com:ecoach/djangotailoring.git master
git subtree add --prefix surveytracking git@github.com:ecoach/surveytracking.git master
git subtree add --prefix tailoring2 git@github.com:ecoach/tailoring2.git master

# shared apps for ecoach master
git subtree add --prefix myauth git@github.com:ecoach/myauth.git master

git subtree add --prefix myselector git@github.com:ecoach/myselector.git master

git subtree add --prefix mytailoring git@github.com:ecoach/mytailoring.git master
git subtree add --prefix mypublisher git@github.com:ecoach/mypublisher.git master
git subtree add --prefix myloader git@github.com:ecoach/myloader.git master
git subtree add --prefix myexporter git@github.com:ecoach/myexporter.git master
git subtree add --prefix myemailer git@github.com:ecoach/myemailer.git master
git subtree add --prefix myusage git@github.com:ecoach/myusage.git master
#git subtree add --prefix mylogger git@github.com:ecoach/mylogger.git master
git subtree add --prefix mytournament git@github.com:ecoach/mytournament.git master
git subtree add --prefix nts git@github.com:ecoach/nts.git master

# fall 2013 coaches
git subtree add --prefix mydata6 git@github.com:ecoach/mydata6.git master
git subtree add --prefix mydata7 git@github.com:ecoach/mydata7.git master
git subtree add --prefix mydata8 git@github.com:ecoach/mydata8.git master
git subtree add --prefix mydata9 git@github.com:ecoach/mydata9.git master

# winter 2014 coaches
git subtree add --prefix mydata16 git@github.com:ecoach/mydata16.git master
git subtree add --prefix mydata17 git@github.com:ecoach/mydata17.git master
git subtree add --prefix mydata18 git@github.com:ecoach/mydata18.git master
git subtree add --prefix mydata19 git@github.com:ecoach/mydata19.git master

# tournament coaches (winter 2014)
git subtree add --prefix mydata14 git@github.com:ecoach/mydata14.git master



