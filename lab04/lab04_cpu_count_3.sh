#!/bin/bash

usage() {
    echo "Usage: $0 [MAX_NUM_CORES]"
}

if [ -z "$1" ]; then
    usage
    exit 1
fi 

required_cpu=$1

num_cpu=$(nproc)

current_date=$(date)

echo "CPU check performed at: $current_date"
echo "Required CPU cores: $required_cpu"
echo "Available CPU cores: $num_cpu"

if [ "$num_cpu" -ge "$required_cpu" ]; then 
    echo "OK: The VM has enough CPU cores."
else
    echo "ERROR: Not enough CPU cores."
fi
