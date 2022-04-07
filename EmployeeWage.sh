#!/bin/bash -x
IsFullTime=1;
IsPartTime=2;
IsWorkingHrs=0;
PerHr=20;
TotalSalary=0;
NoOfWorkingDays=20;
Present=0;
for (( day=1; day<=$NoOfWorkingDays; day++ ));
do
        IsRandomCheck=$((RANDOM%3));
case $IsRandomCheck in
        $IsFullTime)
                IsWorkingHrs=8;
                Present=$(($Present+1));;
        $IsPartTime)
                IsWorkingHrs=4;
                ((Present+1));;
        *)
                IsWorkingHrs=0;;
esac
Salary=$(($IsWorkingHrs*$PerHr))
TotalSalary=$(($Salary+$TotalSalary));
done
echo Total_Salary ":" $TotalSalary;
echo Number_Of_Days_Present ":" $Present;

