# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define a method called new_grocery_list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def new_grocery_list(items)
  list_ary = items.split(' ')
  grocery_list = {}
  list_ary.each do |item|
    grocery_list[item] = 1
  end
  print_list(grocery_list)
  grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: take an item and optional quantity and add to grocery_list
#        call print list method
# output: print updated grocery list
def add_item(item, list, quantity = 1)
  list[item] = quantity
  print_list(list)
  list
end


# Method to remove an item from the list
# input: item name and grocery list name
# steps: delete item from grocery list
# output: print updated grocery list
def delete_item(item, list)
  list.delete(item)
  print_list(list)
  list
end

# Method to update the quantity of an item
# input: item name, grocery list name,and updated qualtity
# steps: update quantity of item name on grocery list
# output: print updated grocery list
def change_quantity(item, list, quantity)
  list[item] = quantity
  print_list(list)
  list
end

# Method to print a list and make it look pretty
# input: grocery list
# steps: go through each item on list and print item and quantity
# output: print item and quantity on own line with some descriptive text

def print_list(list)
  list.each do |item, quantity|
    puts "Purchase #{quantity} of #{item}."
  end
end

#Driver code
grocery_list = new_grocery_list("carrots apples cereal pizza")
add_item('kiwi', grocery_list, 4)
add_item('watermelon', grocery_list)
delete_item('carrots', grocery_list)
change_quantity('apples', grocery_list, 5)
