# First, swap the first and last name
# assign a, e, i, o, u to a variable
# use .next method to get to the next vowel
#
# def swap_string(string1, string2)
#   string1, string2 = string2, string1
# end
# p swap_string("Edward", "Kim")
#
#
# vowels = "aeiou".split('')
# vowels.map! { |vowel| vowel.next }
# p vowels
#
#
# def alias_name(name)
#   next_vowel = {
#     a: "e",
#     e: "i",
#     i: "o",
#     o: "u",
#     u: "a"
#   }
#   name = name.chars
#   i = 0
#   while i < name.length
#     if i == next_vowel
#       puts next_vowel
#     else
#       [i].next
#     end
#     i += 1
#   end
#   name.join('')
# end
# p alias_name("edward kim")

# -------------------------------------------------------

#
# def word_swapper(pair_of_words)
#   # first_name = pair_of_words[0]
#   # last_name = pair_of_words[1]
#   # pair_of_words[0] = last_name
#   # pair_of_words[1] = first_name
#   # p pair_of_words
#   pair_of_words.split(' ').reverse.join(' ')
# end
#
# p word_swapper('Felicia Torres') == "Torres Felicia"
#
# # The last evaluated expression of the method is the return value of that method
# def vowel_swapper(string)
#   answer = ''
#   characters = string.split('')
#   vowels = 'aeiou'
#   vowel_conversions = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
#   # look at these characters
#   characters.each do |character|
#     if vowels.include?(character)
#       answer += vowel_conversions[character]
#     # if its a vowel, swap it and put in answer
#     else
#     answer += character
#     # otherwise put it in answer
#     end
#   end
#   answer
# end
#
# p vowel_swapper('abcde') == 'ebc di'
# p vowel_swapper('ux c') == 'ax c'
#
# def cons_swapper(string)
#   characters = string.char
#   answer = ''
#   cons = "bcdfghjklmnpqrstvwxyz"
#
#   # p characters
#   # look at each char if it is a cons swap it otherwise ignore it
#   characters.each do |character|
#     if cons.include?(character)
#       # swap it and add it
#       swapped_letter = cons_to_cons_converter(character)
#       swapped_letter
#       answer += swapped_letter
#     else
#       answer += character
#     end
#   end
#   answer
# end
#
# def cons_to_cons_converter(cons)
#   if cons == 'z'
#     'b'
#   else
#   legend = "bcdfghjklmnpqrstvwxyz"
#   # 1. find where we are at
#   current_location = legend.index(cons)
#   # 2. get the next number
#   next_location = current_location + 1
#   # 3. return the letter of that number
#   next_letter = legend[next_location]
# end
# end
#
# p cons_to_cons_converter('z')
#
# p vowel_swapper('abc de') == 'acd ef'
# p vowel_swapper('uz c') == 'ub d'
#
# def name_alias(agent_name)
# # 1. swap the words
# reversed_agent_name = word_swapper(agent_name)
# # 2. sub out all the vowels
# name_vowel_switched = vowel_swapper(reversed_agent_name)
# # 3. sub out all the constants
# name_con_switched = cons_swapper(name_vowel_switched)
# name_con_switched.split(' ').map {|name| name.capitalize}.join(' ')
# end
#
# p name_alias('Felicia Torres') == "Turris Filocoe"
#
# loop do
# puts "enter your spy name - First Last, quit to exit"
# spy = gets.chomp
# break if spy == 'quit'
# puts name_alias(spy) || spy.empty?
# end

# --------------------------------------------

#
# def word_swapper(pair_of_words)
#   pair_of_words.split(' ').reverse.join(' ')
# end
#
# p word_swapper('Felicia Torres') == "Torres Felicia"
#
# def vowel_swapper(string)
#   answer = ''
#   characters = string.split('')
#   vowels = 'aeiou'
#   vowel_conversions = { 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
#   characters.each do |character|
#     if vowels.include?(character)
#       answer += vowel_conversions[character]
#     else
#       answer += character
#     end
#   end
#   answer
# end
#
# p vowel_swapper('abc de') == 'ebc di'
# p vowel_swapper('ux c') == 'ax c'
#
# def cons_to_cons_converter(cons)
#   if cons == 'z'
#     'b'
#   else
#     legend = "bcdfghjklmnpqrstvwxyz"
#     current_location = legend.index(cons)
#     next_location = current_location + 1
#     next_letter = legend[next_location]
#   end
# end
#
# p cons_to_cons_converter('z') == 'b'
# p cons_to_cons_converter('f') == 'g'
#
# def cons_swapper(string)
#   characters = string.chars
#   answer = ''
#   cons = "bcdfghjklmnpqrstvwxyz"
#   characters.each do |character|
#     if cons.include?(character.downcase)
#       swapped_letter = cons_to_cons_converter(character.downcase)
#       answer += swapped_letter
#     else
#       answer += character
#     end
#   end
#   answer
# end
#
# p cons_swapper('abc dez') == 'acd feb'
#
# def name_alias(agent_name)
#   reversed_agent_name = word_swapper(agent_name)
#   name_vowel_switched = vowel_swapper(reversed_agent_name)
#   name_con_switched = cons_swapper(name_vowel_switched)
#   name_con_switched.split(' ').map { |name| name.capitalize}.join(' ')
# end
#
# p name_alias('Felicia Torres') == "Vussit Gimodoe"
#
# # Release 1 + 2
#
# spy = 'a'
# all_spies = {}
#
# loop do
#   puts "enter your spy name - First Last, quit to exit"
#   spy = gets.chomp
#   if spy == 'quit' || spy == ''
#     break
#   end
#   puts name_alias(spy)
#   all_spies[spy] = name_alias(spy)
# end
#
# puts 'All of the spies!'
# all_spies.each do |key, value|
#   puts "#{key} => #{value}"
# end

# Swapping the first and last name
def word_swapper(pair_of_words)
  # input first and last name and split it into an array
  # Reverse the ordered pair and join them back with a space
  pair_of_words.split(' ').reverse.join(' ')
end

p word_swapper('Felicia Torres') == 'Torres Felicia'

def vowel_swapper(string)
  answer = ''
  vowels = "aeiou"
  characters = string.split('')
  vowel_conversions = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
  characters.each do |character|
    if vowels.include?(character)
      answer += vowel_conversions[character]
    else
      answer += character
    end
  end
  answer
end

p vowel_swapper('abc ifg') == 'ebc ofg'

def cons_to_cons_converter(cons)
  if cons == 'z'
    'b'
  else
    consonant = 'bcdfghjklmnpqrstvwxyz'
    current_location = consonant.index(cons)
    next_location = current_location + 1
    next_letter = consonant[next_location]
  end
end

p cons_to_cons_converter('z') == 'b'
p cons_to_cons_converter('f') == 'g'

def cons_swapper(string)
  characters = string.chars
  answer = ''
  cons = 'bcdfghjklmnpqrstvwxyz'
  characters.each do |character|
    if cons.include?(character.downcase)
      answer += cons_to_cons_converter(character.downcase)
    else
      answer += character
    end
  end
  answer
end

p cons_swapper('abc dez') == 'acd feb'

def alias_name(agent_name)
  reversed_agent_name = word_swapper(agent_name)
  name_vowel_switched = vowel_swapper(reversed_agent_name)
  name_con_switched = cons_swapper(name_vowel_switched)
  name_con_switched.split(' ').map { |name| name.capitalize}.join(' ')
end

p alias_name('Felicia Torres') == "Vussit Gimodoe"

spy = 'a'
all_spies = {}

loop do
  puts "Enter your spy name - First and Last, quit to exit."
  spy = gets.chomp

  if spy == 'quit' || spy == ''
    break
  end

  puts alias_name(spy)
  all_spies[spy] = alias_name(spy)
end

puts 'All of the spies!'
all_spies.each do |key, value|
  puts "#{key} => #{value}"
end
