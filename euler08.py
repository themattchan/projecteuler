#!/usr/bin/env python

from operator import mul

big_number = open("euler08.txt")
numlist = [int(num) for num in big_number.read() if num != '\n']
products = [reduce(mul, numlist[i-13:i]) for i in range(13, len(numlist))]

print sorted(products,reverse=True)[0]
