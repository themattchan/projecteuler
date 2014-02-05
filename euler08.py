#!/usr/bin/env python

from operator import mul

greatest_p = 0
big_number = open("euler08.txt")
numlist = [int(num) for num in big_number.read() if num!='\n']

for i in range(5, len(numlist)):
    product = reduce(mul, numlist[i-5:i])
    if product > greatest_p:
        greatest_p = product

print greatest_p
                     
                
