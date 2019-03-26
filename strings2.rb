
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