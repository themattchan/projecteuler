#! /usr/bin/env python

max_palindrome = 0

for i in range (999, 99, -1):
    for j in range (999, 99, -1):
        number = i*j
        if  (number > max_palindrome) and (str(number)==str(number)[::-1]):
            max_palindrome = number

print max_palindrome
