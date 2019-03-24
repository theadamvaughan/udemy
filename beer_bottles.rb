


drinks = [ 
  {
  name: "Carlsberg",
  container: "bottle",
  volume: 4,
  amount_drunk: 25,
  description: "taste's like piss. cheap to buy",
  alcoholic: true
},

{
  name: "Becks Blue",
  container: "bottle",
  volume: 0,
  amount_drunk: 25,
  description: "Not bad for a non-alcoholic drink although it takes getting used to",
  alcoholic: false
},

{
  name: "San Miguel",
  container: "can",
  volume: 5,
  amount_drunk: 75,
  description: "Nice medium strength beer",
  alcoholic: true
},

{
  name: "Tennants Super",
  container: "can",
  volume: 9,
  amount_drunk: 10,
  description: "Odd taste. Popular drink to get drunk quickly on a budget",
  alcoholic: true
},

{
  name: "Hop House",
  container: "bottle",
  volume: 5,
  amount_drunk: 50,
  description: "Nice beer made by Guiness",
  alcoholic: true
} ]

# .........................Returns all the drink details ...................

puts "Here are all the drinks we have to offer;"

def details(arr)
  arr.each do |arr|
    puts "#{arr[:name]} comes in a #{arr[:container]}. So far #{arr[:amount_drunk]}% of the drink has been drunk. Critics have described it as; '#{arr[:description]}'."
    if arr[:alcoholic]
      puts "This drink is alcoholic, The alcohol percentage is #{arr[:volume]}%"
    elsif 
      puts "You can drive after drinking this drink as the alcohol percentage is #{arr[:volume]}%"
    end
    puts
  end
end

details(drinks)

# .......................Returns all the alccoholic drinks...................

def alcoholic(drink)
  puts "Would you like to see just the alcoholic drinks?"
  answer = gets.chomp
  puts "The following drinks are alcoholic;" if answer == "yes" 
    drink.each do |hash|
    puts "#{hash[:name]}"if hash[:alcoholic]
  end
end

alcoholic(drinks)


# .....................Returns drinks within a certain ABV range ...................

def percentage(drink)
  puts "What is the minimum ABV that you are after?"
  low = gets.chomp.to_i
  puts "What is the maximum ABV that you are after?"
  high = gets.chomp.to_i
  puts "The following drinks fall within your criteria;"
  drink.each do |hash|
    volume = hash[:volume].to_i
    puts "#{hash[:name]} - #{hash[:volume]}%" if (volume >= low) && (volume <= high)
  end
end

percentage(drinks)
