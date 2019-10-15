#!/bin/bash
# define constant 
# get the param count in  variable
export paramCnt=$#
#touch up_list down_list

if [ ${paramCnt} == 1 ]; then
    export PREFIX=$1
    export count=255
    for Suffix in `seq ${count}` ; do
        export TARGET=${PREFIX}"."${Suffix}
        ( ping -c 1 ${TARGET} > /dev/null 2>&1 ) && ( echo "${TARGET} is up " | tee -a up_list )  || ( echo "${TARGET} is down" | tee -a down_list ) 
    done
else
    echo "required parameter is not passed to the script "
fi