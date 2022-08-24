#!/bin/bash -x

isPartTime=1
isFullTIme=2
maxRateInMonth=100
empRatePerHr=20
numofWorkingDays=20

totalEmpHr=0
totalWorkingdays=0

function getWorkHours()
{
    case $randomCheck in
                           $isPartTime )
                                    empHrs=4
                           ;;
                           $isFullTime  )
                                    empHrs=8
                           ;;
                           *)
                                    empHrs=0
                           ;;
    esac

}
 while [[ $totalEmpHr -lt $maxRateInMonth && 
          $totalWorkingDays -lt $numofWorkingDays  ]]

do

         ((totalWorkingDays++))
          randomcheck=$((RANDOM%3))
          getWorkHours $randomCheck
          totalEmpHr=$(($totalEmpHr+$empHrs))

done

totalsalary=$(($totalEmpHr*$empRatePerHr))
