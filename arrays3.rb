
# ............... Object Pointers and Object Copies ........

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

# ............... Splat arguments ........

# the splat method will take in an unknown number of arguments

def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  p sum
end

sum(23, 56, 78, 23)

# ................the .any? and .all? methods ............

#  The .any? and .all? are boolean methods which will return either true or false

p [1, 3, 4, 5, 7, 9].any? do |number|
  number.even?
end

p [1, 3, 5, 7].all? { |num| num.odd? }
p [1, 3, 8, 7].all? { |num| num.odd? }