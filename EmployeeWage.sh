#!/bin/bash -x
IsFullTime=1;
IsRandomCheck=$((RANDOM%2));
IsWorkingHrs=0;
PerHr=20;
if [ $IsFullTime -eq $IsRandomCheck ];
then
        IsWorkingHrs=8;
else
        IsWorkingHrs=0;
fi
Salary=$(($IsWorkingHrs*$PerHr));
echo $Salary;

