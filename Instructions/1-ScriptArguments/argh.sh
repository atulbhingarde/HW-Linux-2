#!/bin/bash
echo "Hello world "
# prints the script script name
echo "Script name is $0" 
# echoes first parameter if it exists 
[ "F$1" != "F" ] && echo $1 || ( echo "first parameter does not exists ! " && exit 1)  
# echoes all parameters starting with the script name

exitStat=$?
if [ $exitStat == 0 ]; then
    echo "main script name and rest of the parameters $@"
    echo "will list all parameters from command line on by one"
    for argCount in "$@" ; do
    echo argument is ${argCount}
    done
else 
    echo "The script failed with error ${exitStat} and did not complete may be worth checking parameters and logic "
fi