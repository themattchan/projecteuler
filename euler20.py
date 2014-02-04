#!/usr/bin/env python

from math import factorial

number = str(factorial(100))
number_list = [int(x) for x in number]
print sum(number_list)
