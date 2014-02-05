a=[]
for i in range(1, 1001):
    a.append(i**i)
a=str(sum(a))
print a[len(a)-10:len(a)-1]
