#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
                      $isPerTime )
                           empHrs=4
                    ;;
                      $isFullTIme )
                           empHrs=8
                    ;;
                    *)
                          empHrs=0
                    ;;
esac
salary=$(($empHrs*$empRatePerHr))
echo $salary
