# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

  # Create a new hash
  # Add an item with the quantity to the list (line 15)
  # Remove an item from the list (line 20)
  # Update quanitities for items in the list (line 25)
  # Print the list and make it look nice (line 30)

# Method to add an item to a list
# input: item name and optional quantity and hash
# steps: add using input
# output: update the hash, return the hash

# Method to remove an item from the list
# input: name of the item and the hash list
# steps: locate the item in the hash, delete it using a hash method
# output: return the hash

# Method to update the quantity of an item
# input: name of the item, the updated quanitity and the hash list
# steps: convert the string into a symbol if needed and then update it, reassign the key
# output: return the hash

# Method to print a list and make it look pretty
# input: the hash
# steps: iterate through the hash using .each
# output: print to the screen

def make_new_list
  list = {}
end

def add_item(item, quantity, list)
  if list.has_key?(item)
    puts "Hey, you already have that item in your list. Lets update that item."
  end
  list[item] = quantity
end

def remove_item(item, list)
  list.delete(item)
end

def update_quantity(item, quantity, list)
  list[item] = quantity
end

def print_list(list)
  list.each do |key, value|
    puts "food: #{key}, quantity: #{value}"
  end
end

grocery = make_new_list
p grocery
add_item("Lemonade", 2, grocery)
add_item("Tomatoes", 3, grocery)
add_item("Onions", 1, grocery)
add_item("Ice Cream", 4, grocery)

remove_item("Lemonade", grocery)

update_quantity("Ice Cream", 1, grocery)

print_list(grocery)

# Comment reflection Section
=begin

1. Pseudocode is all about orgainzation and logical thinking. It helped us
 get to the answer in an organized fashion.
2. Using hashes in this challenge allowed us to add both a key and value
to our list, rather than adding one single element in an array.
3. A method returns the result based on the type of code your looking for.
4. You can pass in strings, integers, open methods, floats, any objects.
5. By calling each others methods
6. The concepts of hashes were solidified, but still have some questions
regarding loops.

=end
