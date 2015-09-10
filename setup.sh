#!/bin/bash -u

for F in `ls -1` 
do
  if [ $F != ${0##*/} ] ; then
    ln -s `pwd`/$F ~/.$F
  fi
done


