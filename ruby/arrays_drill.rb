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
