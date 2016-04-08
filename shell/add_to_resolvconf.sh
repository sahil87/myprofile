#!/bin/bash
dir1=/etc/resolvconf/resolv.conf.d
file1=$dir1/head
file1old=$dir1/head.old

set -x
if [ -f $file1 ] && grep resolv.conf.v1.2 $file1
  then echo "resolve.conf all good."
  else
      sudo mv $file1 $file1old;
      sudo cp ../settings/resolvconf/head $file1;
      sudo resolvconf -u;
fi
