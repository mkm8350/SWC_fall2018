#!/bin/bash
# Usage
# 
echo "Enter the first country: "
read name1
echo "\n"
echo "Enter the second country: "
read name2
echo "\n"
echo "Enter which index to compare(Enter a one of the numbers below): "
echo "1.lifeExp\n2.pop\n3.gdpPercap"
read index

cut -f$index Data/gapminder.txt 
