def build_array(arg1, arg2, arg3)
  array = [arg1, arg2, arg3]
end
p build_array("ed", "joe", "brandon")

def add_to_array(array, item)
  array = []
  array << item
end
p add_to_array([], "ed")

empty_array = []
p empty_array

array = ["hello", 1, "ed", 24, "blue"]
p array

array.delete_at(2)
p array

array.insert(2, "wasup")
p array

array.shift
p array

p array.include?("ed")

new_array = ["brandon", "joe", "ed", 3, 5, 8]

combine_array = array + new_array
p combine_array
