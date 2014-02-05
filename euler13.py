from operator import add

num = [ long(x) for x in open("euler13.txt").read().split('\n') if x!='']

sum = str(reduce(add, num))

print sum[0:10]

