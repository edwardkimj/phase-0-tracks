# def say_hello
#   name1 = "Steve"
#   name2 = "Tiahna"
#   puts "Why, hello there!"
#   yield(name1, name2)
# end
#
# say_hello { |name1, name2| puts "Great to see you, #{name1} and #{name2}!" }


nba_players = ["Steph Curry", "Kobe Bryant", "Lebron James", "Derrick Rose"]

players_numbers = { steph_curry: 30, kobe_bryant: 24, lebron_james: 6, derrick_rose: 1}


nba_players.each do |name|
  puts "#{name} is one of the top NBA players!"
end

players_numbers.each do |name, number|
  puts "#{name}'s number is #{number} when they are playing in the NBA."
end

nba_players.map! do |name|
  name + "!!"
end
p nba_players
