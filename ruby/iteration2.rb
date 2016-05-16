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

# Release 2
# Arrays
array = [1, 2, 3, 4, 5]

array.delete_if do |num|
  num > 1
end
p array

array.keep_if do |num|
  num < 5
end
p array

array1 = array.take_while do |num|
  num > 3
end
p array1

array2 = array.drop_while do |num|
  num < 5
end
p array2

# hashes

hash = { one: 1, two: 2, three: 3, four: 4, five: 5}


hash.delete_if do |word, num|
  num < 4
end
p hash

hash.keep_if do |word, num|
  num < 5
end
p hash

hash.select! do |word, num|
  num < 3
end
p hash

hash.reject! do |word, num|
  num < 3
end
p hash
