#!/bin/bash
re="^[1-9]+[0-9]*$"
if [[ $1 =~ $re ]]
then :
else
  echo "wrong input"
  exit 1
fi
if [[ $2 =~ $re ]]
then :
else
  echo "wrong input"
  exit 1
fi

for i in $(seq  $1)
do
  for j in $(seq $2)
  do
    printf "%d*%d=%d " $i $j `expr $i \* $j`
  done
  echo ""
done
exit 0
