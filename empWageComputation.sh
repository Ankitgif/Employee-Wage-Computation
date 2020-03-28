#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isFullTime=1
isPartTime=2
EMPWAGEPERHR=20
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
