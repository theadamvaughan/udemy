
# ................ Arrays 2 ..................

#  Review of blocks

# 3.times { |number| puts "I am currently on loop number #{number}"}

# 5.times do |number|
#   square = number * number
#   puts "The current number is #{number} and its square is #{square}"
# end


#  ............... .each Method ................

# candies = ["Sour Patch Kids", "Milky Way", "Airheads"]

# candies.each do |candy|
#   puts "I love eating #{candy}"
#   puts "It tastes do good"
# end

# names = ["Bo", "Mo", "Joe"]

# names.each { |x| puts x.upcase }

# [1, 2, 3, 4, 5].each do |num|
#   square = num * num
#   puts "The square of #{num} is #{square}"
# end

# fives = [5, 10, 15, 20, 25, 30, 35, 40]

# fives.each do |x| 
#   if x.even?
#     puts x 
#   end
# end

# fives.each do |x| 
#   puts x if x.even?
# end

# odds = []
# evens = []

# fives.each do |x| 
#   if x.odd?
#     odds.push(x)
#   end
# end

# fives.each do |x| 
#   if x.even?
#     evens.push(x)
#   end
# end

# fives.each do |x| 
#   if x.odd?
#     odds.push(x)
#   elsif 
#     evens << x
#   end
# end

# fives.each do |x|
#   x.even? ? evens << x : odds << x
# end

# fives.each { |x| x.even? ? evens << x : odds << x }

# p odds
# p evens

# def print_evens_and_odds(array)
#   odds = []
#   evens = []
#   array.each { |x| x.even? ? evens << x : odds << x }
#   p odds
#   p evens
# end

# print_evens_and_odds(fives)
# print_evens_and_odds([1, 4, 16, 234, 54, 28, 15, 93])


# ................... each within each ...................


# shirts = ["striped", "plain white", "plaid", "band"]
# ties = ["polka dot", "solid color", "boring"]

# shirts.each do |shirt|
#   ties.each do |tie|
#     puts "OPTION: A #{shirt} and a #{tie} tie"
#   end
# end

# dice_1 = [1, 2, 3, 4, 5, 6]
# dice_2 = [1, 2, 3, 4, 5, 6]
# dice_3 = [1, 2, 3, 4, 5, 6]
# dice_4 = [1, 2, 3, 4, 5, 6]
# dice_5 = [1, 2, 3, 4, 5, 6]
# dice_6 = [1, 2, 3, 4, 5, 6]

# dice_1.each do |a|
#   dice_1.each do |b|
#     dice_1.each do |c|
#       dice_1.each do |d|
#         dice_1.each do |e|
#           dice_1.each do |f|
#             puts "A possible roll is #{a}, #{b}, #{c}, #{d}, #{e}, #{f}"
#           end
#         end
#       end
#     end
#   end
# end


# ................... The for Loop ...................

# numbers = [3, 5, 7]

# numbers.each { |num| puts num}

# p num 

# num = 100

# for num in numbers 
#   puts num
# end

# puts num


# ................... Each with Index ................... 


# colors = ["Red", "Blue", "Green", "Yellow"]

# colors.each_with_index do |color, index|
#   puts "Moving on to index number #{index}"
#   puts "The current color is #{color}"
# end

# fives = [5, 10, 15, 20]

# fives.each_with_index do |number, index|
#   puts "The current value is #{number} and index #{index}!"
#   puts number * index
# end


# ................... Challenge ................... 

# nums = [1, 2, 3, 4, 5]

# sum = 0

# nums.each_with_index do |number, index|
#   x = number * index
#   puts "Index position #{index} times the number #{number} is #{x}"
#   sum += x
# end

# puts "The total is #{sum}"


# arr = [-1, 2, 1, 2, 5, 7, 3]

# def print_if(arr)
#   arr.each_with_index do |num, index|
#     if index > num 
#       puts "We have a match! The index is #{index} and the number is #{num}"
#       puts "The result of multiplying them is #{num * index}"
#     end
#   end
# end

# print_if(arr)


# ................... .amp and .collect Methods on an Array ...................


# numbers = [1, 2, 3, 4, 5]
# squares = []
# numbers.each { |number| squares << number ** 2 }

# p squares

# numbers = [1, 2, 3, 4, 5]
# squares = numbers.map { |number| number ** 2 }
# # squares = numbers.collect { |number| number ** 2 } does the same thing

# p squares


# Fahrenhiet to Celsius = Deduct 32, then multiply by 5, then divide by 9


# fahr_temperatures = [105, 73, 40, 18, -1]
# celsius_temp = fahr_temperatures.map do |temp|
#   minus_32 = temp - 32
#   times_by_5 = minus_32 * 5
#   celsius = times_by_5 / 9
#   p "#{temp} degrees Fahrenheit is #{celsius} degrees celsius"
#   celsius
# end

# p fahr_temperatures
# p celsius_temp


# numbers = [3, 8, 11, 15, 89]

# cubed = numbers.map do |cube_value|
#   cube_value.to_i
#   cube_value ** 3
# end

# p cubed

# def cubes(array)
#   array.map { |number| number ** 3}
# end

# p cubes(numbers)
# p cubes([3, 5, 8, 13, 17, 1000])



# .......................... Iteration over Array with While or Until Loop ...............


# animals = ["lion", "zebra", "baboon", "cheetah", "Elephant", "Kangeroo"]
# puts animals.length

# i = 0

# while i < animals.length
#   puts i
#   puts animals[i]
#   i += 1
# end

# animals = ["lion", "zebra", "baboon", "cheetah", "Elephant", "Kangeroo"]

# i = 0

# until i == animals.length
#   puts i
#   puts animals[i]
#   i += 1
# end



# .......................... The Break Keyword ...............


# prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite", "Pyrite", "Pyrite"]

# i = 0
# while i < prizes.length
#   current = prizes[i]
#   if current == "Gold"
#     puts "Yay!! You found gold"
#     break
#   else 
#     puts "#{current} is not gold you jackass"
#   end
#   i += 1
#  end


# numbers = [1, 2, 3, "Hello", 5, 6, 7, 8]

# numbers.each do |num|
#   if num.is_a?(Integer)
#     puts "The square of #{num} is #{num ** 2}"
#   else 
#     puts "'#{num}' is not a number you prick. I'm stopping here"
#     break
#   end
# end


# .......................... The Next Keyword ...............


# numbers = [1, 2, 3, "Hello", 5, 6, nil, 7, 8, []]

# numbers.each do |num|
#   unless num.is_a?(Integer)
#     next
#   else
#     puts "The square of #{num} is #{num ** 2}"
#   end
# end


# .......................... The Reverse Method ...............


# p [1, 2, 3].reverse
# p ["a", "b", "c"].reverse
# p [true, false, false, true, true, false].reverse

# queue = [4, 8, 45, 16, 23]
# p queue

# queue.reverse!
# p queue


# .......................... The Sort Method ...............

# numbers = [5, 13, 1, -2, 8]
# words = ["caterpillar", "kangeroo", "apple", "Zebra"]

# #  All capital letters come before the lowercase letters

# p numbers.sort
# p numbers
# p words.sort!
# p words 


# .......................... The concat Method ...............



# p [5, 13, 1, 8] + [5, 18, 75, 7]
# p [5, 13, 1, 8].concat([5, 18, 75, 7])

# nums = [1, 2, 3]
# p nums
# nums.concat([4, 5, 6])
# p nums

# a = [1, 2, 3]
# b = [4, 5, 6]

# def custom_concat(arr1, arr2)
#   result = arr1.concat(arr2)
#   result
# end

# p custom_concat(a, b)
# p a

# a = [1, 2, 3]
# b = [4, 5, 6]

# def custom_concat(arr1, arr2)
#   arr2.each { |element| arr1 << element }
#   arr1
# end

# p custom_concat(a, b)
# p a

# .......................... The max and min Method ...............

# stock_prices = [723.99, 434.12, 84.7, 649.92]

# p stock_prices.max
# p stock_prices.min

# fruits = ["apples", 'kiwi', "banana", "watermelon"]

# p fruits.max
# p fruits.min

# a = [134, 213, 653, 21, 54, 87, 3435]

# def custom_max(arr)
#   arr.max
# end

# def custom_min(arr)
#   arr.min
# end

# p custom_max(a)
# p custom_min(a)

# ........ Or you can use the .sort method

# a = [134, 213, 653, 21, 54, 87, 3435]

# def custom_max(arr)
#   arr.sort[-1]
# end

# def custom_min(arr)
#   arr.sort[0]
# end

# p custom_max(a)
# p custom_min(a)

#  ....... If you did not know the max and min Methods

# def custom_max(arr)
#   return nil if arr.empty?
#   max = arr[0]
#   arr.each do |value| 
#     max = value if value > max
#   end
#   max
# end

# def custom_min(arr)
#   return nil if arr.empty?
#   min = arr[0]
#   arr.each { |value| min = value if value < min }
#   min
# end

# numbers = [3, 9, 5, 7, 10, 1]

# p custom_max(numbers)
# p custom_min(numbers)


#  .......................... The include? Method ...............


numbers = [1, 2, 3, 4, 5]

p numbers.include?(3)
p numbers.include?(8)