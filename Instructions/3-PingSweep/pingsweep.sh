#!/bin/bash
# define constant 
# get the param count in  variable
export paramCnt=$#
if [ ${paramCnt} == 1 ]; then
    export PREFIX=$1
    export count=5
    for Suffix in `seq ${count}` ; do
        export TARGET=${PREFIX}"."${Suffix}
        ( ping -c 1 ${TARGET} > /dev/null 2>&1 ) && echo "${TARGET} is up "  || echo "${TARGET} is down"
    done
else
    echo "required parameter is not passed to the script "
fi