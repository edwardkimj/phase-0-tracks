# define methods encrypt and decrypt
# Each method will take a string as a parameter
# Set a counter
# Create an until loop
# Return encrypt or decrypted string
# End

def prev_char(single_letter)
  (single_letter.ord - 1).chr
end

def encrypt(string)
  i = 0
  encrypted_string = ""
  until i == string.length
    if string[i] == "z"
      encrypted_string += "a"
    else
    encrypted_string += string[i].next
    end
    i += 1
  end
  encrypted_string
end

puts encrypt("abc")

def decrypt(string)
  i = 0
  decrypted_string = ""
  until i == string.length
    if string[i] == "a"
      decrypted_string += "z"
    else
    decrypted_string += prev_char(string[i])
    end
    i += 1
  end
  decrypted_string
end

puts decrypt("bcd")


puts encrypt("abc") #should return "bcd"
puts encrypt("zed") #should return "afe"
puts decrypt("bcd") #should return "abc"
puts decrypt("afe") #should return "zed"

puts decrypt(encrypt("swordfish"))
puts "Hello Agent"
loop do
puts "Would you like to encrypt or decrypt?"
answer = gets.chomp

  if answer == "encrypt"
    puts "Please enter the password"
    password = gets.chomp
    puts encrypt(password)
    break

  elsif answer == "decrypt"
    puts "Please enter the password"
    password = gets.chomp
    puts decrypt(password)
    break

  else
    puts "Option Not Available"
  end
end
