# Take in a name as an argument and swap the first and last name

def swap_name(full_name)
  swapped_name = full_name.split(' ').reverse.join(' ')
  swapped_name
end
p swap_name('Felicia Torres') === 'Torres Felicia'

# Def a method that will change all vowels to the next vowel. Make an edge case
# so that 'u' will become 'a'

def vowel_swapper(string)
  next_vowel_characters = ''
  characters = string.split('')
  vowels = 'aeiou'
  vowel_conversions = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
  # Iterate through vowels and push it into vowels_characters
  characters.each do |character|
    if vowels.include?(character)
      next_vowel_characters += vowel_conversions[character]
    else
      next_vowel_characters += character
    end
  end
  next_vowel_characters
end
p vowel_swapper('abc de') == 'ebc di'
p vowel_swapper('ux c') == 'ax c'

def cons_to_cons(cons)
  if cons == 'z'
    'b'
  else
    consonants = 'bcdfghjklmnpqrstvwxyz'
    current_letter = consonants.index(cons)
    next_location = current_letter + 1
    next_letter = consonants[next_location]
  end
end

p cons_to_cons('z') === 'b'
p cons_to_cons('f') === 'g'

def cons_swapper(string)
  characters = string.split('')
  next_cons_character = ''
  cons = 'bcdfghjklmnpqrstvwxyz'
  characters.each do |character|
    if cons.include?(character.downcase)
      swapped_letter = cons_to_cons(character.downcase)
      next_cons_character += swapped_letter
    else
      next_cons_character += character
    end
  end
  next_cons_character
end

p cons_swapper('abc dez') == 'acd feb'

def alias_manager(full_name)
  reversed_name = swap_name(full_name)
  name_vowel_switched = vowel_swapper(reversed_name)
  name_con_switched = cons_swapper(name_vowel_switched)
  name_con_switched.split(' ').map { |name| name.capitalize }.join(' ')
end

p alias_manager('Felicia Torres') === 'Vussit Gimodoe'


all_spies = {}

loop do
  puts "Please enter your spy name - First Last, quit to exit"
  spy = gets.chomp
  if spy == 'quit' || spy == ''
    break
  end
  puts alias_manager(spy)
  all_spies[spy] = alias_manager(spy)
end

puts 'All of the spies!'
all_spies.each do |spy, alias_manager|
  puts "#{spy} is actually #{alias_manager}"
end
