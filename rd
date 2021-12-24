#!/bin/bash

RD_DIRECTORY=${RD_DIRECTORY-old/}

[ ! -d ${RD_DIRECTORY}/ ] && { 
    mkdir ${RD_DIRECTORY}/
    cd ${RD_DIRECTORY}/

    log="$(fossil init .fossil)"
    fossil open .fossil
    echo "$log" | tee .log
    fossil add .log
    fossil commit -m "$(date +%s)"
    fossil close

    cd ..
}

files=$(echo "$@" *~ '#'*)

{
    echo "-- $(date)"

    mv -fv $files ${RD_DIRECTORY}/

    cd ${RD_DIRECTORY}/

    fossil open --keep .fossil
    fossil add $(find $files)
    fossil commit -m "$(date +%s)" --no-warnings
    fossil close

    cd ..
}





