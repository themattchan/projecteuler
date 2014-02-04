import string

names = [str(n).strip('"') for n in open("euler22.txt").read().split(',') if n!='\n']
names.sort()
name_weights = dict(zip(string.ascii_uppercase, range(1,27)))
score = 0

for i in range(len(names)):
    tot_weight = 0
    for char in names[i]:
        tot_weight += name_weights.get(char)
    score += ((i+1)*tot_weight) #the list starts counting at element 1, adjust accordingly

print score
