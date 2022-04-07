#!/bin/bash -x
IsFullTime=1;
IsPartTime=2
IsRandomCheck=$((RANDOM%3));
IsWorkingHrs=0;
PerHr=20;
if [ $IsFullTime -eq $IsRandomCheck ];
then
        IsWorkingHrs=8;
elif [ $IsPartTime -eq $IsRandomCheck ];
then
	IsWorkingHrs=4;
else
        IsWorkingHrs=0;
fi
Salary=$(($IsWorkingHrs*$PerHr));
echo $Salary;

