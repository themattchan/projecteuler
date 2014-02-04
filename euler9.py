for a in range(1000,0,-1):
    for b in range(1000,0,-1):
        c = 1000-a-b
        if (a<b and b<c) and (a**2)+(b**2)==(c**2) and (a+b+c)==1000:
            print a*b*c
            break
