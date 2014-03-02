import time
start = time.time()
#exponentiation by squaring
def exponent(n,p):
    if p<0:
        return exponent(1/n, -p)
    elif p==0:
        return 1
    elif p==1:
        return n
    elif p%2==0:
        return exponent(n**2, p/2)
    elif p%2==1:
        return n*exponent(n**2, (p-1)/2)

n = 28433
p = exponent(2,7830457)
number = (n*p)+1
print str(number)[-10:]
end = time.time() - start
print end
