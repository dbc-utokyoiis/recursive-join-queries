#!/bin/bash

grep -v "#" cit-Patents.txt > CPAT-tmp0.txt

if [ -e CPAT-tmp.txt ]; then
  rm -f CPAT-tmp.txt
fi

R=0
while read line; do
  RANDOM=$R
  R=$RANDOM
  A=$(($R % 100))
  echo $A" "$line >> CPAT-tmp.txt
done < CPAT-tmp0.txt

rm -f CPAT-tmp0.txt