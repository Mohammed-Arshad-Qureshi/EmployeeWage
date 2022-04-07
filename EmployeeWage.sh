#!/bin/bash -x
IsPresent=1;
IsRandomCheck=$((RANDOM%2));
if [ $IsPresent -eq $IsRandomCheck ];
then
        echo Present
else
        echo Absent
fi

