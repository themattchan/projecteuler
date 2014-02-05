from operator import add
num = [ long(x) for x in open("euler13.txt").read().split('\n') if x!='']
print str(reduce(add, num))[0:10]

