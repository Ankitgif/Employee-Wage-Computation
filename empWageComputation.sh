#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
isPartTime=2
EMPWAGEPERHR=20
empCheck=$((RANDOM%3))
if [ $isPresent -eq $empCheck ]
then
	echo "Employee is Present"
	empWagePerHr=20
	empHr=8
	empWage=$(($EMPWAGEPERHR*$empHr))
	echo "$empWage"
elif [ $isPartTime -eq $empCheck ]
then
	echo "Part Time Employee"
	empHr=4
	empWage=$(($EMPWAGEPERHR*empHr))
	echo "$empWage"
else
	echo "Employee is Absent"
	empWage=0
	echo "$empWage"
fi
