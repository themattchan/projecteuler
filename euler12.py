def triangle(x):
    return ((x*(x+1))/2)

def divisors(x):
    for i in xrange(2, int(x ** 0.5) + 1):
        if x % i == 0:
            return [i] + divisors(x / i)
    return [x]
        
