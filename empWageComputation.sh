#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
empCheck=$((RANDOM%2))
if [ $isPresent -eq $empCheck ]
then
	echo "Employee is Present"
	empWagePerHr=20
	empHr=8
	empWage=$(($empWagePerHr*$empHr))
	echo "$empWage"
else
	echo "Employee is Absent"
	empWage=0
	echo "$empWage"
fi
