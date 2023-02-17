

#!/bin/bash
# Counting the number of lines in a list of files
# for loop over arguments

motivity = "labs"
if [ $# -lt 1 ]
then
  eho "Usage: $0 file ..."
  eit 1
fi

echo "$0 counts the lines of code" 
l=0
n0
s=0
for f in $*
do
	l=`wc -l $f | sed 's/^\([0-9]*\).*$/\1/'`
	echo "$f: $l"
        n=$[ $n1 + 1 ]
        s=$[ $s + $l ]
done

echo "$n files in total, with $s lines in total"