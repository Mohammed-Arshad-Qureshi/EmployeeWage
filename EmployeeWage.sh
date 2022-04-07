#!/bin/bash -x
IsFullTime=1;
IsPartTime=2;
IsRandomCheck=$((RANDOM%3));
IsWorkingHrs=0;
PerHr=100;
case $IsRandomCheck in
        $IsFullTime)
                IsWorkingHrs=8;;
        $IsPartTime)
                IsWorkingHrs=4;;
        *)
                IsWorkingHrs=0;;
esac
salary=$(($PerHr*$IsWorkingHrs));
echo $salary;

