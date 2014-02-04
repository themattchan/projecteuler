def triangle(x):
    return ((x*(x+1))/2)

def divisors(x):
    for i in xrange(2, long(x ** 0.5) + 1):
        if x % i == 0:
            return [i] + divisors(x / i)
            break
    return [x]

print len(divisors(triangle(100000)))
i=10000000
while len(divisors(triangle(i)))<501:
    i+=1

print triangle(i)
