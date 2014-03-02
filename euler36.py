sum = 0

def palindrome(i):
    if i == int(str(i)[::-1]):
        return True
    else:
        return False
        
for i in range(1,1000001):
    if (palindrome(i) and palindrome(int(bin(i)[2:]))):
        sum += i

print sum
