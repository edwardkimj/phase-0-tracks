def say_hello
  name1 = "Steve"
  name2 = "Tiahna"
  puts "Why, hello there!"
  yield(name1, name2)
end

say_hello { |name1, name2| puts "Great to see you, #{name1} and #{name2}!" }


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

array_num = [1, 2, 3, 4, 5]

# Arrays

array_num.delete_if do |num|
  num < 5
end
p array_num

array_num.keep_if do |num|
  num < 5
end
p array_num

array1 = array_num.take_while do |num|
  num < 5
end
p array1

array2 = array_num.drop_while do |num|
  num < 5
end
p array2

hash_num = { one: 1, two: 2, three: 3, four: 4, five: 5}

# Hashes

hash_num.delete_if do |word, num|
  num < 3
end
p hash_num

hash_num.keep_if do |word, num|
  num < 3
end
p hash_num

hash_num.select! do |word, num|
  num < 3
end
p hash_num

hash_num.reject! do |word, num|
  num < 3
end
p hash_num
