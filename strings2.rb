
# ............... Strings II .............


#  .............. .split Method ................


sentence = "Hi my name is Adam. There are spaces here!"

puts sentence.split
puts sentence.split(" ")

sentence = "Hi my name is Adam. There are spaces here!"

words = sentence.split(" ")

words.each { |word| puts word.length }

sentence = "how much wood would a woodchuck chuck if a woodchuck could chuck wood"

def longest_word(sentence)
 longest = sentence.split(" ") #convert a string into an array
 longest.sort_by!(&:length).reverse! 
 #sort by the length and start with the longest one
 longest #return the first item of the array (with 0 index)
end

def longest_word(sentence)
 longest = sentence.split
 longest.sort_by!(&:length).reverse! 
 longest[0] 
end

puts longest_word(sentence)


#  ............... Iterate over a string ............


"Hello world".each_char { |char| puts char }

name = "Adam Vaughan"

p name.split("")

letters = name.chars

letters.each do |x| 
  if x != " " 
    puts "#{x} is awesome!"
  end
end


#  ............... .join method on an Array ............



names = ["Joe", "Moe", "Bob"]

p names.join(" ")

p ["H", "e", "l", "l", "o"].join

def custom_join(array, delimiter = "")
  string = ""
  last_index = array.length - 1
  array.each_with_index do |element, index| 
    string << element
    string << delimiter unless index == last_index
  end
  string
end

puts custom_join(names)
puts custom_join(names, "-")



#  ............... .count method on a string ............


puts "Hello world".count("l")
puts "Hello world".count("lo")
puts "Hello world".count("lw")
puts "Hello world".count("lH")

puts "An amazing aardvark appearted".count("Aa")

def custom_count(string, search_characters)
  count = 0
  string.each_char do |char|
    if search_characters.include?(char)
      count += 1
    end
  end
  count
end

puts custom_count("An amazing aardvark appeared", "Aa")

def custom_count(string, search_characters)
  count = 0
  string.each_char { |char| count += 1 if search_characters.include?(char) }
  count
end


puts custom_count("An amazing aardvark appeared", "Aa")



#  ............... the index and rindex method on a string ............

#  rindex will go in reverse
#  index will start from the front

fact = "I am very handsome"

p fact.index("I")
p fact.index("z")
p fact.index("am")
p fact.index("e")
p fact.index("e", 7)
p fact.index("e", 6)

p fact.rindex("e")

#  Challenge

def custom_index(string, substring)
  return nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end

p custom_index(fact, "I")
p custom_index(fact, "h")
p custom_index(fact, "z")
p custom_index(fact, "am")


#  ............... the insert method on a string ............

typo = "GeorgWashington"

typo.insert(5, "e ")
puts typo

typo = "George Washingto"

typo.insert(-1, "n")
puts typo


#  ............... the squeeze method on a string ............