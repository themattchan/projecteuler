a = 0
b = 1
store = a
i=0

while True:
    i+=1
    store = a+b
    a = b
    b = store
    if len(str(a)) == 1000:
        break

print i
