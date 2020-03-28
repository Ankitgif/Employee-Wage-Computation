#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
IS_FULL_TIME=1
IS_PART_TIME=2
MAX_HR_IN_MONTH=4
EMP_WAGE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0
function getWorkHr()
{
	local empCheck=$1
	 case $empCheck in
                $IS_FULL_TIME )
                        empHr=8
                        ;;
                $IS_PART_TIME )
                        empHr=4
                        ;;
                * )
                        empHr=0
                        ;;
        esac
	echo "$empHr"
}
while [[ $totalEmpHr -lt $MAX_HR_IN_MONTH &&
			$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHr="$( getWorkHr $empCheck )"
	totalEmpHr=$(( $totalEmpHr + $empHr ))
done
totalWage=$(($totalEmpHr*$EMP_WAGE_PER_HR))
echo "$totalWage"
