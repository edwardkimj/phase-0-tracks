puts "How many employees will be processed?"
employees = gets.chomp.to_i

i = 1
flag = true
while flag
  puts "What is your name?"
  name = gets.chomp
  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire!"
  end
  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  year = gets.chomp

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
  garlic_bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance? (yes or no)"
  insurance = gets.chomp

flag_1 = true
while flag_1
  puts "Can you name any alergies you have?"
  alergies = gets.chomp
  if algeries = "sunshine"
    puts "Probably a vampire"
  else
    puts "done"
  end
  i += 1
end


  if age == 23 && (garlic_bread == "yes" || insurance == "yes")
    puts "Probably not a vampire"
  elsif age != 23 && garlic_bread != "yes" || insurance != "yes"
    puts "Probably a vampire"
  elsif age != 23 && garlic_bread != "yes" && insurance != "yes"
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Clearly a vampire"
  else
    puts "Results inconclusive"
  end
  if i == employees
    flag = false
  end
  i += 1
end
