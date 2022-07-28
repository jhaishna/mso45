#!/bin/bash


if [ "$1" == "-device_type" -a "$3" == "-input" -a $# -eq 4 ]; then
    echo
    echo "Executing : mso_parse_create.pl -object_type /mso_mta_job$2 -input $4 "
    mso_parse_create.pl -object_type /mso_mta_job$2 -input $4
    return_status=$?
    echo; echo
    if [ $return_status -eq 0 ];then
        echo "Executing: mso_mta_job_processor -object_type /mso_mta_job$2 "
        mso_mta_job_processor -object_type /mso_mta_job$2 -verbose
    fi
else
    #echo "Invalid input parameter"
    echo
    echo "Usage : $0 -device_type </device/xxx> -input <input_file_name>"
    echo
    exit 1
fi
