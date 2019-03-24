


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
  name: "Hop House",
  container: "bottle",
  volume: 5,
  amount_drunk: 50,
  description: "Nice beer made by Guiness",
  alcoholic: true
} ]

# Returns all the alccoholic drinks

def alcoholic(drink)
  drink.each do |hash|
    if hash[:alcoholic]
    puts "#{hash[:name]}"
    end
  end
end

alcoholic(drinks)

# Returns all the drink details

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
