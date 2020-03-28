#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
IS_FULL_TIME=1
IS_PART_TIME=2
MAX_HR_IN_MONTH=100
EMP_WAGE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $MAX_HR_IN_MONTH &&
			$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_FULL_TIME )
			echo "Full Time Employee"
			empHr=8
			;;
		$IS_PART_TIME )
			echo "Part Time Employee"
			empHr=4
			;;
		* )
			echo "Employee is Absent";
			empHr=0
			;;
	esac

	totalEmpHr=$(($totalEmpHr+$empHr))
done
totalWage=$(($totalEmpHr*$EMP_WAGE_PER_HR))
echo "$totalWage"
