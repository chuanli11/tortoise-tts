#!/bin/bash

# set default values for arguments
text=${1:-"inputs/test.txt"}
voices=${2:-"deniro deniro"}


# iterate over each string in the list
for voice in $voices; do
    python tortoise/read.py --textfile $text --voice $voice --preset high_quality --disable-redaction
done
