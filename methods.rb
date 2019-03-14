
# ..........Methods............

# DRY - Don't repeat yourself



# ..........Task.........



puts "Converty Military Time (1630) to Standard Time (04:30pm)"

def ask(question)
  puts question
  return gets.chomp
end

mil_hour = ask("can I have the Miliary Time hour?").to_i
mil_min = ask("can I have the Miliary Time minute?").to_i

if mil_min == 00 
  mil_min = "00"
end

if mil_hour == 00 
  mil_hour = 12
  puts "That makes it #{mil_hour}:#{mil_min}am Standard Time"
elsif mil_hour >= 12
  mil_hour_pm = mil_hour - 12
  puts "That makes it #{mil_hour_pm}:#{mil_min}pm Standard Time"
else
  puts "That makes it #{mil_hour}:#{mil_min}am Standard Time"
end

# ............................

def introduce_myself
  puts "I am handsome"
  puts "I am talented"
  puts "I am brilliant"
end

introduce_myself



# .........Local Variables.............



def praise_person(name, age)
  puts "#{name} is #{age + 5} and is amazing"
end

praise_person("Adam", 24)



# .........Return Values............



def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"
  num1 * num2
  return num1 + num2
end

p add_two_numbers(3, 5)
p add_two_numbers(8, 4)

def nothing 
end

p nothing

def return_string
  "What will be the return value here?"
end

p return_string

def return_guess
  puts "Will always return nil no matter what be in puts"
  print "Will print be any different?"
end

p return_guess

p return_string
p return_guess

result = return_guess
p result
p result.class
p return_guess.class



# ............The IF Statement................


# The code we've written so far executes no matter what.
Programming is about defining paths that a program can take.
A conditional is a statement that controls if a piece of code executes
A conditional evaluates to a Boolean: true or false
If the condition is met, the code executes. Otherwise, it is skipped

if condition
  # code to execute if true
end

if 5 < 7
  puts "That maths statement is true!"
end

password = "topsecret"

if password == "topsecret"
  puts "Congratulations, you have logged onto our system!"
end

word = "boo hoo"

if word.length == 8
  puts "That word has 8 letters!"
end

if word.include?("oo")
  puts "Yep, your word has oo in it"
end



# # ..............Truthiness and Falsiness................

nil and false are the only falsey values in ruby


if nil
  puts "That is true"
end



# # ....................If_elseif....................


puts "Can I hate your favourite colour?"
color = gets.chomp

# color = "Green"

if color == "red"
  puts "Red is rad"
elsif color == "Green"
  puts "Green is awesome"
else
  puts "I hate that colour"
end

puts "What grade did you get?"
grade = gets.chomp.upcase


if grade == "A"
  puts "That's an excellent grade. Good job!"
elsif grade == "B"
  puts "That's a good grade. Let's bring it up next time" 
else
  puts "That's a shit grade"
end

def odd_or_even(num)
  if num.odd?
    puts "#{num} is an odd number"
  else 
    puts "#{num} is an even number"
  end
end

puts "Can I have a number?"
input = gets.chomp.to_i

odd_or_even(input)

age = 25
ticket = "General admission"
id = true

if age > 21 && ticket == "General admission" && id
  puts "Gongratulations, welcome to the show"
end

age = 18
ticket = "whatever"
id = true

# is the same as:

if age > 21 && ticket && ticket
  puts "Gongratulations, welcome to the show"
elsif ticket && id
  puts "Alright, you get in anyway"
end


# # .............or operator...............


budget = 5
price = 10
mood = "happy"

if budget > price || mood == "happy"
  puts "I'm going to buy the item"
# end

# # # ........................................

# #  Ruby will check the below condition, if the left side evaluates to false, it will check the right

def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted #{rank}, please proceed to the Intelligence Department"
  else
    puts "Access Denied"
  end 
end

authenticate_agent("007", "James Bond", "Spy")



# # #  .....................Nested If Statement...............



def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "breakfast"
      "Cereal"
    elsif time_of_day == "lunch"
      "Sandwich"
    elsif time_of_day == "dinner"
      "Chicken Nuggets"
    end 
  elsif time_of_week == "weekend"
    if time_of_day == "breakfast"
      "Fry up!"
    elsif time_of_day == "lunch"
      "Chicken Pizza"
    elsif time_of_day == "dinner"
      "Takeaway Time!"
    end 
  end
end

p meal_plan("weekday", "lunch")
p meal_plan("weekend", "lunch")


# # # ......................Respond_to?.................

num = 1000

if num.respond_to?("next")
  p num.next
end

# # #  Using symbols (:) take up less memory. Need to be as efficient as possible

puts "Hello".respond_to?("length")
puts 1.respond_to?(:next)  


# # # .......................Ternary Operator (Ternary means three)............

if 1 < 2
  puts "Yes it is!"
else
  puts "No, it's not!"
end

puts 1 < 2 ? "Yes it is!" : "No, it's not!"

if "yes" == "yes"
  puts "The two are equal"
else
  puts "The two are not equal"
end

# # puts "no" == "yes" ? "The two are equal!" : "No, it's not!"

def even_or_odd(num)
  num.even? ? "That is an even number" : "That number is not even"
end

puts even_or_odd(6) 

pokemon = "Pikachu"

puts pokemon == "Charizard" ? "Fireball!" : "That is not Charizard"

def check_pokemon(pokemon)
  pokemon == "Charizard" ? "Fireball" : "That is not Charizard"
end 

puts check_pokemon("Pikachu")
puts check_pokemon("Squirtle")
puts check_pokemon("Onyx")
puts check_pokemon("Charizard")

pokemon = "Pikachu"

if pokemon == "Charizard"
  puts "Fireball"
else 
  puts "That is not Charizard"
# # end


# # # .............Default or Optional Parameters..............

def make_phone_call(number, international_code = 1, area_code = 646)
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

make_phone_call(123456, 5, 999)
make_phone_call(123456, "3", "743")
make_phone_call(123456)


# # .....................Call a Method from another Method..........


def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    "The result of adding #{a} and #{b} is #{add(a, b)}"
  elsif operation == "subtract"
    "The result of subtracting #{a} and #{b} is #{subtract(a, b)}"
  elsif operation == "multiply"
    "The result of multiplying #{a} and #{b} is #{multiply(a, b)}"
  else
    "Thats not a real math operation, genius!!"
  end
end

p calculator(12, 85)
p calculator(10, 20, "subtract")
p calculator(12, 34, "multiply")
p calculator(12, 34, "blah blah blah")