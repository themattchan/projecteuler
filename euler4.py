#! /usr/bin/env python

max_palindrome = 0

for i in range (999, 99, -1):
    for j in range (999, 99, -1):
        number = i*j
        if (str(number)==str(number)[::-1]) and (number > max_palindrome):
            max_palindrome = number

print max_palindrome
