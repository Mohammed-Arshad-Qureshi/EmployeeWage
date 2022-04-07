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

function getWorkingHrs(){
case $1 in
        $IsFullTime)
                IsWorkingHrs=8;;
        $IsPartTime)
                IsWorkingHrs=4;;
        *)
                IsWorkingHrs=0;;
esac
echo $IsWorkingHrs;
}

while [[ $totalEmpHrs -lt $Max_Hrs_In_Month && $TotalWorkingDays -lt $NoOfWorkingDays ]]
do
        ((TotalWorkingDays++));
	IsWorkingHrs="$( getWorkingHrs $((RANDOM%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$IsWorkingHrs));
done
SalaryRegardingHrs=$(($totalEmpHrs*$PerHr));
echo Number_Of_Days_Present ":" $TotalWorkingDays;
echo "Number_of Working Hrs : " $totalEmpHrs;
echo "Salary Regarding Working hrs : " $SalaryRegardingHrs;


