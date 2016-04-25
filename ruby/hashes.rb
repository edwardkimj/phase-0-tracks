# applicant = {
#   name: "Anishka Clarke",
#   address: "1451 Broadway Avenue, New York, NY",
#   email: "anishka@interiordesigngeniuses.com",
#   phone: nil,
#   fave_blue: "indigo",
#   likes_paisley: true,
#   likes_chevrons: false,
#   likes_photorealistic_woods: false,
#   likes_abstract_woods: true,
#   ombre: "Practically medieval in its appalling irrelevance"
# }

# First create a hash on information on the client
 client = {
   name: "John Smith",
   age: 26,
   address: "1234 Broadway Ave, Los Angeles, CA",
   email: "johnsmith@interiordesign.com",
   phone: nil,
   number_children: 4,
   decor_theme: "beach",
   likes_blue: true,
   likes_red: false,
   likes_bricks: false,
 }

# Prompt the client for all the information
puts "What is your name?"
p client[:name]

puts "What is your age?"
p client[:age]

puts "What is your street address?"
p client[:address]

puts "What is your email address?"
p client[:email]

puts "What is your phone number?"
p client[:phone]

puts "How many children do you have?"
p client[:number_children]

puts "What kind of theme do you want?"
p client[:decor_theme]

puts "Do you like the color blue?"
p client[:likes_blue]

puts "Do you like the color red?"
p client[:likes_red]

puts "Would you like bricks as your wall?"
p client[:likes_bricks]

# print back out the hash to the screen
puts client

#Ask the user if everything is correct
puts "What do you want to change for your information?"
answer = gets.chomp

if answer == "none"
  puts "Okay great. We'll submit your information."
else
  answer == "decor_theme"
  puts "What would you like it to be?"
  p client[:decor_theme] = "Italian"
end

# print the latest hash
puts client
