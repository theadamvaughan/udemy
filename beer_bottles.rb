


drinks = [ 
  {
  name: "Carlsberg",
  container: "bottle",
  volume: "5%",
  amount_drunk: 25,
  description: "taste's like piss. cheap to buy",
  alcoholic: true 
},

{
  name: "Becks Blue",
  container: "bottle",
  volume: "0%",
  amount_drunk: 25,
  description: "Not bad for a non-alcoholic drink although it takes getting used to",
  alcoholic: false
},

{
  name: "Hop House",
  container: "bottle",
  volume: "5%",
  amount_drunk: 50,
  description: "Nice beer made by Guiness",
  alcoholic: true
} ]

def alcoholic(arr)
  arr.each do |hash|
    if hash[:alcoholic]
    puts "#{hash[:name]}"
    end
  end
end

alcoholic(drinks)

# def details(arr)
#   puts "Name of the drinks is: #{arr[:name]}"
#   puts "It comes in a #{arr[:container]}"
#   puts "The alcohol percentage is #{arr[:volume]}"
#   puts "So far #{arr[:amount_drunk]}% of the drink has been drunk"
#   puts "Critics description: #{arr[:description]}"
#   if arr[:alcoholic] == true
#     puts "This drink is alcoholic"
#   elsif 
#     puts "You can drive after drinking this drink"
#   end
# end

# puts details(drink_2)