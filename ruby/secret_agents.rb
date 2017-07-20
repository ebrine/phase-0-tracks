#pseudo code for encrypt method:
#take the first character of the string
#if it is a space leave it the same.
#if letter is "Z", return "A"
#Otherwise, figure out the index location of the letter in the alphabet
#Get the next letter of the alphabet
#Store the next letter
#Repeat for the next character of the string until the string ends
#return the stored letters

def encrypt(string)
  length = string.length
  index = 0
  encrypted_string = ""
  while index < length
    letter = string[index]
      if letter == "z"
        next_letter = "a"
      elsif letter == " "
        next_letter = " "
      else
        next_letter = string[index].next
      end
    index += 1
    encrypted_string += next_letter
  end
encrypted_string
end
#print encrypt ("Amazing Ruby")
secret = encrypt("Amazing Ruby")

#pseudocode for decrypt method
#take the first character of the string
#if it is a space leave it the same.
#if letter is "a", return "z"
#Otherwise, figure out the index location of the letter in the alphabet
#Get the previous letter of the alphabet
#Store the previous letter
#Repeat for the next character of the string until the string ends
#return the stored letters

def decrypt(string)
  string = string.downcase
  length = string.length
  index = 0
  decrypted_string = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < length
    letter = string[index]
      if letter == "a"
        previous_letter = "z"
      elsif letter == " "
        previous_letter = " "
      else
        alphabet_index = alphabet.index(letter)
        new_index = alphabet_index - 1
        previous_letter = alphabet[new_index]
      end
    index += 1
    decrypted_string += previous_letter
  end
decrypted_string
end
print decrypt(secret) #test run

 #test code from assignment:
#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))
#Decrypt switches each letter to the previous 
#letter in the alphabet and then encrypt switches 
#each letter to the next letter in the alphabet. 
#Therefore, the two methods cancel each other out 
#when used together and the return value is the 
#same as the input.


# adding an interface:

# print question asking agent if they want to encrypt or decrypt
# store the answer
# convert answer to lowercase
# check if answer was encrypt or decrypt
# if yes, move on to next question
# if no, say "I didn't understand. Please answer with encrypt or decrypt"
# run loop until YES
# ask them for the password
# store the answer
# If they asked for encrypt:
# run encrypt method on the password that they gave
# print the result 
# If they asked for decrypt:
# run the decrypt method on the password that they gave
# print the result
# exit 

puts "Would you like to encrypt or decrypt a password?"
user_answer = gets.chomp
user_answer.downcase!

if user_answer == "no"
  exit
end
until user_answer == "encrypt" || user_answer == "decrypt"
  puts "I didn't understand. Please answer with 'encrypt' or 'decrypt'"
  user_answer = gets.chomp
  user_answer.downcase!
end  

puts "What's the password? Please enter a password with lowercase letters and spaces only."
user_password = gets.chomp

if user_answer == "encrypt"
  puts "Your encrypted password is: #{encrypt(user_password)}"
else 
  puts "Your decrypted password is: #{decrypt(user_password)}"
end
exit
