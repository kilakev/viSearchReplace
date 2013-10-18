#!/bin/bash
#Usage ./viSearchReplace <original> <new> <filename or directory>
if [ $# -ne 3 ]; then
        echo "Usage:    ./viSearchReplace <original> <new> <filename or directory>"
        exit 1
fi
for i in `find $3 ! -type d ! -name . ! -name .. ! -name $0`; do
    vim -c '%s/'$1'/'$2'/gc' -c 'wq' $i
done
exit 0
