#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
maxRateInMonth=100
numofWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

#function tom calculate dailywage
function getWorkHours() 
{
        case $randomCheck in
                            $isPartTime )
                                  empHrs=4
                             ;;
                            $isFullTime )
                                  empHrs=8
                             ;;
                             *)
                                  empHrs=0
                             ;;
      esac

}

#function to calculate totalwage/totalsalary
function getEmpWage()
{
           echo $(($totalEmpHr*$empRatePerHr))

}
while [[ $totalEmpHr -lt $maxRateInMonth 
          &&$totalWorkingDays -lt $numofWorkingDays ]]
 
do
       ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
        getWorkHours $randomCHeck
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalsalary=$( getEmpWage $totalEmpHr )
echo ${dailyWages[@]}
