def build_array(arg1, arg2, arg3 )
    array = [arg1, arg2, arg3]
end
p build_array("first", "second", "third")
p build_array(3, 5, "name")

def add_to_array(arr, value)
  arr << value
end
p add_to_array([], 1)
p add_to_array(["hello", 3, true], "edward")

empty_array = []
p empty_array

test_array = [1, "name", 3, true, "string"]

test_array.delete_at(2)
p test_array

test_array.insert(2, "hello")
p test_array

test_array.shift
p test_array

p test_array.include?("name")

another_array = ["ed", 5, false, "ken", 2]

new_array = test_array + another_array

p new_array
