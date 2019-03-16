
# ............... Intro to ranges ............


 two dots (1..5) will include the final value
 three dots (1...5) will exclude the final value

nums = 90..150

p nums.first(4)
p nums.last(3)

nums = 90...150

p nums.last(1)


# ................. Alphabetical ranges .............


alphabet = "a".."z"
puts alphabet.first(5)
p alphabet.first(5)

alphabet = "A".."Z"
puts alphabet.first(40)


# ................. Size Method ...............


numbers = 143..769
p numbers.size
numbers = 143...769
p numbers.size


# ........... Check if a value is in a Range ........

half_alphabet = "a".."m"
puts half_alphabet.include?("f")
puts half_alphabet.include?("y")

p half_alphabet === "k"

numbers = -14..79
puts numbers.include?(79)

numbers = -14...79
puts numbers.include?(79)
p numbers === -4

# ............... Generate a random number ..........


puts rand
puts rand.round(2)

puts rand(100)
puts rand * 100

puts rand(50..60)
puts rand(1..100)