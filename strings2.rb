
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

sentence = "Thhhhe aardvark jummped    ovver the fence!"
puts sentence.squeeze

sentence = "Thhhhe aardvark jummped      ovver the fence!"
puts sentence.squeeze(" ")
puts sentence.squeeze("h")
puts sentence.squeeze(" h")
puts sentence.squeeze(" hv")
puts sentence.squeeze(" hvm")

sentence = "Thhe      aardvark     jummped   ovver the fennce!"

def custom_sentence(string)
  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    if char == chars[index + 1]
      next
    else
      final << char
    end
  end
  p final
end

custom_sentence(sentence)

# ............ This is the refactored code .........

def custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    char == chars[index + 1] ? next : final << char
  end
  p final
end

custom_sentence(sentence)

# ............ Even more refactoring!! .........

def custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index { |char, index| char == chars[index + 1] ? next : final << char }
  p final
end

custom_sentence(sentence)


#  ............... the clear method ............

p "blah blah blah".clear

# the .clear method will mutate the original object it is working on


#  ............... the delete method ............

puts "Hello World".delete('l')

def custom_delete(string, delete_chatacters)
  new_string = ""
  string.each_char do |char|
    unless delete_chatacters.include?(char)
      new_string << char
    end
  end
  p new_string
end

custom_delete("Hello world", "lw")



def custom_delete(string, delete_chatacters)
  new_string = ""
  string.each_char {|char| new_string << char unless delete_chatacters.include?(char) }
  p new_string
end

custom_delete("Hello world", "lw")