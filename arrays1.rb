
# ................ Arrays ..................


 Everything in Ruby is an object - intergers, floats, strings, booleans, etc
 An ordered collection of objects. It can be thought of as a list
 The array itself is an object. It acts as a container for other objects
 An array is created with a apro of square brackets []

numbers = [4, 6, 8, 16, 22, 24]
p numbers
puts numbers 

toys = ["Transformers", "Monopoly", "Super Soaker", "PS4"]

puts toys

things = [4, true, "Hello", 10.99]

registrations = [true, true, false, true, false]

students = [["Adam", 36, true], ["Ellie", 23, true]]



# ................ Shorthand Syntax ..............


names = %w[Jack Jill John James]
puts names


# .................Array.new...................

p Array.new
p []

p Array.new(3)
p Array.new(10, 3)
p Array.new(5, [1, 2, 3])


# ................Access single element by index...............


fruits = ["Apple", "Orange", "Grape", "Banana"]

p fruits.length
p fruits[2]

# Getting items from the back

p fruits.last
p fruits[fruits.length - 1]
p fruits[-1]


# ................The fetch method...............


names = ["Adam", "Ellie", "Craig", "Maddie"]

p names.fetch(2)
p names.fetch(100, "That does not exist")
p names.fetch(100)


# .............Access Sequential Arrays Elements...............


numbers = [1, 3, 5, 7, 9, 23, 27]

p numbers[2]

#  4 places from index 2
p numbers[2, 4]


# ..........Access Sequential Arrays Elements with a range object...............


numbers = [1, 3, 5, 7, 9, 23, 27]

p numbers [2..4]
p numbers [2...4]


# ...................Access Multiple Arrays Elements...............


channels = ["ITV", "BBC", "Dave", "Channel 4"]

p channels.values_at(0, 3)
p channels[-2]
p channels.values_at(3, 3, 6, 1, 100)


# ...................Slice Method...............

numbers = [0, 2, 4, 8, 10, 12, 14]

p numbers.slice(3)
p numbers[3]
p numbers.slice(4)
p numbers[4]


# .............Overwrite one or More Array Elements


fruits = ["Apple", "Orange", "Grape", "Banana"]
p fruits

fruits[1] = "Watermelon"
p fruits

fruits[-1] = "Bananas"
p fruits

fruits[4] = "Raspberry"
p fruits

fruits[5] = "Strawberry"
p fruits

fruits[10] = "Kiwi"
p fruits

fruits[3, 2] = ["Canteloupe", "Dragonfruit"]
p fruits

fruits[0..2] = ["Blackberry", "Orange", "Pears"]
p fruits

#  This code REMOVES values

fruits[0..3] = ["Blah"]
p fruits


# ................ .length, size and count method ........................

p [1,2,3,4].length
p [1, nil, 2, "whatever", 3, 4].size
p [1, 2, 3, 4, 2, 3, 2].count
p [1, 2, 3, 4, 2, 3, 2].count(2)


#  .................... .empty? and .nil? .........................

puts [1, 2, 3].empty?
puts [].empty?
puts [].nil?
# puts [].length == 0
puts [nil, nil, nil].empty?
puts [false, false, false].nil?
puts [nil, nil, nil].nil?
puts 1.nil?

letters = ("a".."j").to_a
p letters

character = letters[5]
p character

character = letters[25]
p character
p character.nil?

# ...................... First and Last Method ...................

arr = [1,3,5,7,9,15,21,18,6]

# puts array.first
# puts array.last

# p array.first(3)
# p array.last(2)

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end

p custom_first(arr, 5)

def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  arr[-num..-1]
end

p custom_last(arr, 4)


# .................. .Push & .Insert method & Shovel Operator ...................


locations = ["House", "Airport", "Bar"]
p locations

locations.push ("Restaurant")
p locations 

locations << "Saloon"
p locations 

locations << "Curry House" << "Gym"
p locations 

locations.insert(1, "Stadium")
p locations 

locations.insert(-1, "Cafe")
p locations 


# .................. pop method ...................

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
a = arr.pop
p arr
p a

# #  If you don't add an argument (arr.pop), you get an interger 
# # If you add an argument (arr.pop(1)) you get an array

two_items = arr.pop(2)
p two_items


# .................. shift and unshift method ...................

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
extract = arr.shift
p extract
p arr

arr.unshift(1)
p arr


# .................. equality and inequality operator ...................

a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b
p a == c
p a == d

p a != b
p a != c
p a != d

a = ["Skittles", "Starburst", "Snickers"]
b = ["Skittles", "Starburst", "snickers"]

p a == b
p a != b


# .................. The spaceship operator ...................


p 5 <=> 5
p [1, 2, 3] <=> [1, 2, 3]
p 456 <=> 4
p 4 <=> 133
p 5 <=> "String" 
p [1, 2, 3] <=> [1, 2, 4]
p [1, 2, 3] <=> [1, 2, 2]


# ...................... Range to Array .......................


letters = "A".."T"
p letters
letters = letters.to_a
p letters[12]

numbers = 415..450
p numbers
numbers_array = numbers.to_a
p numbers_array
p numbers_array[2..7]


# ...................... The is_a? Predicate Method .......................

p 3.class
p 3.14.class
p 99999999999999999.class
p true.class
p false.class
p nil.class
p [1, 2, 3].class
p "Hello".class

p 1.is_a?(String)
p ["a", "b"].is_a?(Array)

arr = ["a", "b"]
  if arr.is_a?(Array)
  arr.each { |e| puts e }
end