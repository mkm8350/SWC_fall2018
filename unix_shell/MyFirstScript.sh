#!/bin/bash
# Usage: sh MyFirstScript.sh / ./MyFirstScript.sh
# Takes gapminder.txt and finds country with highest life exp in 2002

input=$1
year=$2

cut -f1,3,4 $input | grep $year | sort -n -k3 | tail -n1 > Country_HighestLifeExp.txt
