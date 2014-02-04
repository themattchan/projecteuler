#!/usr/bin/env python

a = 0
b = 1
store = a
evenfib = 0

while b < 4000000:
    store = a+b
    a = b
    b = store
    if b % 2 == 0:
        evenfib = evenfib + b

print evenfib
