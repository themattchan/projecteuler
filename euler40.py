n = ""
while len(n) < 1000001:
        for i in range(1000001):
                n += str(i)
                
product = int(n[1])*int(n[10])*int(n[100])*int(n[1000])*int(n[10000])*int(n[100000])*int(n[1000000])

print product
