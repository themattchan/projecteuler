from math import sqrt

def check_prime(x):
    for i in range(3,int(sqrt(x))+1,2):
            if x % i == 0:
              return False
              break
    return True

p = 2

for i in range(3, 2000000, 2):
    if check_prime(i):
        p = p + i

print p
