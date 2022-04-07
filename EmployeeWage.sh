#!/bin/bash -x
IsFullTime=1;
IsPartTime=2;
IsWorkingHrs=0;
PerHr=20;
TotalSalary=0;
NoOfWorkingDays=20;
Present=0;
Max_Hrs_In_Month=100;

totalEmpHrs=0;
TotalWorkingDays=0;

while [[ $totalEmpHrs -lt $Max_Hrs_In_Month && $TotalWorkingDays -lt $NoOfWorkingDays ]]
do
        ((TotalWorkingDays++));
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
totalEmpHrs=$(($totalEmpHrs+$IsWorkingHrs));
done
SalaryRegardingHrs=$(($totalEmpHrs*$PerHr));
echo Number_Of_Days_Present ":" $TotalWorkingDays;
echo "Number_of Working Hrs : " $totalEmpHrs;
echo "Salary Regarding Working hrs : " $SalaryRegardingHrs;


