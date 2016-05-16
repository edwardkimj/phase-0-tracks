# Prompt the designer/user for all of their information
puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp

puts "What is your street address?"
address = gets.chomp

puts "What is your email address?"
email = gets.chomp

puts "What is your phone number?"
phone = gets.chomp

puts "How many children do you have?"
number_children = gets.chomp

puts "What kind of theme do you want?"
decor_theme = gets.chomp

puts "Do you like the color blue?"
likes_blue = gets.chomp

puts "Do you like the color red?"
likes_red = gets.chomp

puts "Would you like bricks as your wall?"
likes_bricks = gets.chomp


# print back out the hash to the screen
client = {
  :name => "#{name}",
  age: "#{age}",
  address: "#{address}",
  email: "#{email}",
  phone: "#{phone}",
  number_children: "#{number_children}",
  decor_theme: "#{decor_theme}",
  likes_blue: "#{likes_blue}",
  likes_red: "#{likes_red}",
  likes_bricks: "#{likes_bricks}",
}
puts "Thank you, here is your client's file:"
client.each {|key, value| puts "#{key}: #{value}"}

#Ask the user if everything is correct
puts "What do you want to change for your information?"
answer = gets.chomp

if answer == "none"
  puts "Okay great. We'll submit your information as is."
  client.each {|key, value| puts "#{key}: #{value}"}
else
  answer == "#{answer}"
  puts "What would you like it to change to?"
  new_answer = gets.chomp
  client[:"#{answer}"] = "#{new_answer}"

  # Print back out the update hash with updated values
  puts "Thank you, here is your client's updated file:"
  client.each {|key, value| puts "#{key}: #{value}"}
end
