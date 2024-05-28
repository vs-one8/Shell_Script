#!/bin/bash
if [[ $# -eq 0 ]]
then 
    echo "usage:please provide software name as command line arguments"
    exit 1
fi
  
if [[ $(id -u) -ne 0 ]]
then 
    echo "please run from root user mode"
    exit 2
fi

for softwares in $@
do 
    if which $softwares &> /dev/null
    then 
        echo "already $softwares is installed......!!"
    else
        echo "installing $softwares ......."
        sudo apt install $softwares -y &> /dev/null 
        if [[ $? -eq 0 ]]  
        then
            echo "succesfully installed $softwares"
        else
            echo "unable to install $softwares"
        fi
    fi

done
