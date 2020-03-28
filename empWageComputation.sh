#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isFullTime=1
isPartTime=2
EMPWAGEPERHR=20
totalWage=0
numWorkingDays=20
for(( day=1;day<=numWorkingDays;day++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime )
			echo "Full Time Employee"
			empHr=8
			;;
		$isPartTime )
			echo "Part Time Employee"
			empHr=4
			;;
		* )
			echo "Employee is Absent";
			empHr=0
			echo "$empWage"
			;;
	esac
	empWage=$(($EMPWAGEPERHR*$empHr))
	echo "$empWage"
	totalWage=$(($totalWage+$empWage))
	echo "$totalWage"
done
