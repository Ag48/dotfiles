#!/bin/sh

for F in `ls -1` 
do
  if [ $F != $0 ] ; then
    ln -s $F 
  fi
done


