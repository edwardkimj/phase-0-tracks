# Create an array with some data
animals = ['dog', 'cat', 'lion', 'tiger', 'elephant']

# Create a hash with data
animal_names = {dog: 'Axe', cat: 'Jon', lion: 'Baxton', tiger: 'Fury', elephant: 'Brian'}

# Use the .each method on the animals array
animals.each do |animal|
  puts "This is a #{animal} and he is very well behaved."
end

# Use the .each method on the animals_name hash
animal_names.each do |animal, name|
  puts "The #{animal}'s name is #{name}."
end

# Use the .map! method on the animals array
animals.map! do |animal|
  "I love " + animal + "!!"
end
p animals
