from operator import mul

grid = open( "euler11.txt")
numarray = []
greatest_p = 0

for line in grid:
    row = line.rstrip().split(' ')
    row = map(int, row)
    numarray.append(row)

#horizontal
for i in range(len(numarray)):
    for j in range(4, len(numarray[i])):
        product = reduce(mul, numarray[i][j-4:j])
        if product > greatest_p:
            greatest_p = product

#vertical
for j in range(len(numarray[0])):
    for i in range(len(numarray)-3):
        product = numarray[i][j]*numarray[i+1][j]*numarray[i+2][j]*numarray[i+3][j]
        if product > greatest_p:
            greatest_p = product
        
#horizontal L-R
for i in range(len(numarray[0])-3):
    for j in range(len(numarray)-3):
        product = numarray[i][j]*numarray[i+1][j+1]*numarray[i+2][j+2]*numarray[i+3][j+3]
        if product > greatest_p:
            greatest_p = product

#horizontal R-L
for i in range(3, len(numarray)):
    for j in range(len(numarray[0])-3):
        product = numarray[i][j]*numarray[i-1][j+1]*numarray[i-2][j+2]*numarray[i-3][j+3]
        if product > greatest_p:
            greatest_p = product


print greatest_p
