
# ..................Case Statement............

#  Used in place of elsif

def rate_my_food(food)
  case food
  when "Steak" 
    "Pass the steak sauce! That's delicious!"
  when "Sushi"
    "Great choice, my favourite food"
  when "Tacos", "Burritos", "Quesadillas"
    "Yum yum! I love Mexican food"
  when "Tofu", "Brussel Sprouts"
    "Disgusting! Yuck!"
  else 
    "I haven't tried that food"
  end
end

puts "What it your favourite food?"
x = gets.chomp

puts rate_my_food(x)


# ......Grade Calculator


def calculate_school_grade(grade)
  case grade
  when 100
    "A*"
  when 90..99 
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

def calculate_school_grade(grade)
  case grade
  when 100 then "A*"
  when 90..99  then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

puts "Can I have your mark?"
mark = gets.chomp.to_i

if mark == 100
  puts "Oh my god! I can't believe you got an #{calculate_school_grade(mark)}"
elsif mark <= 59
  puts "You got a #{calculate_school_grade(mark)}? Man, you're a fucking moron!"
else
  puts "Well done, you got a #{calculate_school_grade(mark)}"
end

# .............. Negation with ! ..............

#  ! is equal to saying "this is not..."

user = "free"

if user != "subscriber"
  puts "Only subscribers here"
end

puts !true
puts !nil
puts !3
puts !!3

#  ............... Unless Keyboard ........

password = "whiskers"

if password != "whiskers"
  puts "Not allowed!"
else
  puts "That's the right password, welcome!"
end

unless password == "whiskers"
  puts "Not allowed!"
else
  puts "That's the right password, welcome!"
end

puts "Please can I have your new password?"

password = "whiskers"

unless password.include?("a")
  puts "It includes the letter a!"
end


#  ................. While Keyword ................


i = 1

while i <= 10
  puts i
  i += 1
end

# Username and password authentication

status = true

while status
  print "Please enter username: "
  username = gets.chomp.downcase
  print "Please enter your password: "
  password = gets.chomp.downcase

  if username == "adam" && password == "udemy"
    puts "Entry granted. The nuclear codes are 1354"
    status = false
  elsif username == "quit" || password == "quit"
    puts "Goodbye! Better luck next time"
    status = false
  else 
    puts "Incorect combination, try again or enter 'quit' to exit"
  end
end


# ................... Until keyboard ...............


i = 1

until i > 9
  puts i
  i += 1
end



#...................... FizzBuzz ...................


def fizzbuzz(number)
  i = 0
  # You can use;  while i <= number
  until i > number
    if (i % 3 == 0) && (i % 5 == 0)
      puts "FizzBuzz"
    elsif (i % 3 == 0)
      puts "Fizz"
    elsif (i % 5 == 0)
      puts "Buzz"
    else
      puts i
    end
    i += 1
  end
end

puts "Can I have a number?"
input = gets.chomp.to_i

fizzbuzz(input)


# ...................... Statement Modifiers / Inline modifiers ..............

number = 5000
verified = true

if number > 2500 && verified == true
  puts "Huge number!"
end

puts "Huge number!" if number > 2500 && verified == true


# .................... Conditional Assignment .............

y = nil
p y

y ||= 5
p y

y ||= 10
p y

greeting = "Hello"
extraction = 0
letter = greeting[extraction]
letter ||= "Not found"
