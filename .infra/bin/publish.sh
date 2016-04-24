#!/usr/bin/env bash
WEBDIR=~/DEV/LeJeuDuPromoteur/lejeudupromoteur.github.io/

git -C $WEBDIR add $WEBDIR
git -C $WEBDIR commit -am 'publish'
git -C $WEBDIR push origin master
git -C $WEBDIR status