def collatz(x):
    i=1
    while x != 1:
        if x%2 == 0:
            x = x/2
        elif x%2 == 1:
            x = (3*x)+1
        i+=1
    return i
        
longest_chain = 0
start = 0    

for x in range (1000000,1,-1):
    if collatz(x) > longest_chain:
        longest_chain = collatz(x)
        start = x

print start
