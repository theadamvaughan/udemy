
# ............... Object Pointers and Object Copies ........

# 

a = [1, 2, 3]
b = [1, 2, 3]

c = a.dup
# This will duplicate a and store it in a seperate location in memory

p a.object_id
p b.object_id
p c.object_id
# the object_id will tell you where the object is located in the memory.

b = a
# This will link b to a's location in memory

p a.object_id
p b.object_id
p c.object_id

b.push(100)
# This will overwrite a's array
c.push(30)
# This will just update c's array

p a
p b
p c