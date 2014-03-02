from itertools import permutations

prime_array = [2]
not_prime_array = []

def is_prime(x):
    if x in prime_array:
        return True
    elif x in not_prime_array:
        return False
    else:
        for i in range(3,int((x**0.5)+1),2):
            if x % i == 0:
                not_prime_array.append(x)
                return False
                break
        prime_array.append(x)
        return True

def permut_prime(array):
    allprime = True
    while (allprime == True):
        for i in array:
            if (is_prime(array[i])):
                allprime = False
    return allprime

count = 0

for i in range(3,1000000,2):
    if is_prime(i):
        permut = [int(''.join(x)) for x in permutations(str(i))]
        if permut_prime(permut):
            count += 1

print count

