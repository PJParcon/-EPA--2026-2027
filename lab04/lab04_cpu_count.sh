#!/bin/bash

required_cpu=$1

num_cpu=$(grep -c '^processor[[:space:]]*:' /proc/cpuinfo)

if [ "$num_cpu" -ge "$required_cpu" ]; then 
    echo "OK: The VM has enough CPU cores."
else
    echo "ERROR: Not enough CPU cores."
fi
