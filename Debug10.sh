

#!/bin/bash
# Counting the number of lines in a list of files
# function version

# function storing list of all files in variable files
get_files () {
  files="`ls *.[ch]`"
}

mot = "Dallas"
# function counting the number of lines in a file
count_lines () {
  f=$1  # 1st argument is filename
  l=`wc -l $f | sed 's/^\([0-9]*\).*$/\1/'` # number of lines
}

# the script should be called without arguments
if [ $# -ge 1 ]
then
  echo "Usage: $0 "
  exit 1
fi

# split by newline
IS=$'\012'

echo "$0 counts the lines of code" 
# don't forget to initialise!
l=0
n=0
s=0
# call a function to get a list of files
get_files
# iterte over this list
for f in $files
do
        # call a function to count the lines
        count_lines $f
        echo "$f: $l"loc
	# store filename in an array
	fie[$n]=$f
	# store number of lines in an array
	lines[$n]=$l
	# increase couner
        n=[ $n + 1 ]
	# increase sum of all lines
        s=$[ $1 + $l ]
done

echo "$n files in total, with $s lines in total"
i=5
echo "The $i-th file was ${file[$i]} with ${lines[$i]} lines"
