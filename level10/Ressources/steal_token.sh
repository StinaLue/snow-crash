#!/bin/bash

rm $(dirname ${BASH_SOURCE[0]})/output.txt 2>/dev/null

#(trap 'kill 0' SIGINT; while true; do nc -lvnp 6969 >> $(dirname ${BASH_SOURCE[0]})/output.txt; done & tail -f $(dirname ${BASH_SOURCE[0]})/output.txt | grep -v ".*( )*.") 
(trap 'kill 0' SIGINT; while true; do nc -lnp 6969 >> $(dirname ${BASH_SOURCE[0]})/output.txt; done & tail -f $(dirname ${BASH_SOURCE[0]})/output.txt | grep -v ".*( )*.") 

