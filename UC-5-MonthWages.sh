#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numofworkingDays=20

totalsalary=0

for(( day=1; day<=$numofworkingDays; day++ ))
do
      randomCheck=$((RANDOM%3))
      case $randomcheck in

                           $isPartTIme )
                                 empHrs=4
                           ;;
                           $isFullTime )
                                 empHrs=8
                           ;;
                           *)
                                 empHrs=0
                           ;;
   esac

    salary=$(($empHrs*$empRatePerHr)) #dailywage
    totalsalary=$(($totalsalary+$salary)) #wageforamonth
done
                         
