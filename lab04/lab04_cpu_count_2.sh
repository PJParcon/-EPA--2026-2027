#!/bin/bash

usage() {
    echo "Usage: lab04_cpu_count.sh [MAX_NUM_CORES]"
}

if [ -z "$1" ]; then 
    usage
    exit 1
fi 

required_cpu=$1

num_cpu=$(grep -c '^processor[[:space:]]*:' /proc/cpuinfo | wc -l)

if [ "$num_cpu" -ge "$required_cpu" ]; then 
    echo "OK: The VM has enough CPU cores."
else
    echo "ERROR: Not enough CPU cores."
fi

