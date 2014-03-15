from math import sqrt

tnums = [0, 0]
def triangle(x):
	return (x*(x+1))/2

def factors(n):
	return set(
		reduce(
			list.__add__,
			([i, n//i] for i in range(1, int(sqrt(n)) + 1) if n % i == 0)))
	
def divisors(x):
	for i in xrange(2, long(x ** 0.5) + 1):
		if x % i == 0:
			return [i] + divisors(x / i)
			break
			return [x]

# print len(factors(triangle(100000)))
i=10000000000
# print len(factors(triangle(i)))
# while True:
# 	if len(factors(triangle(i)))==500:
# 		print triangle(i)
# 		break
# 	else:
# 		i+=1
print triangle(i)
