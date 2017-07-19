#take the first character of the string
#if it is a space leave it the same.
#if letter is “Z”, return “A”
#Otherwise, figure out the index location of the letter in the alphabet
#Get the next letter of the alphabet
#Store the next letter
#Repeat for the next character of the string until the string ends
#return the stored letters

def encrypt(string)
 length = string.length
 index = 0
 encrypted_string = “”

 while index < length
   letter = string[index]

     if letter == “z”
       next_letter = “a”

     elsif letter == ” ”
       next_letter = ” ”

     else
       next_letter = string[index].next
     end

   index += 1
   encrypted_string += next_letter
 end

encrypted_string
end

#print encrypt (“Amazing Ruby”)

secret = encrypt(“Amazing Ruby”)

#take the first character of the string
#if it is a space leave it the same.
#if letter is “a”, return “z”
#Otherwise, figure out the index location of the letter in the alphabet
#Get the previous letter of the alphabet
#Store the previous letter
#Repeat for the next character of the string until the string ends
#return the stored letters

def decrypt(string)
 string = string.downcase
 length = string.length
 index = 0
 decrypted_string = “”
 alphabet = “abcdefghijklmnopqrstuvwxyz”


 while index < length
   letter = string[index]

     if letter == “a”
       previous_letter = “z”

     elsif letter == ” ”
       previous_letter = ” ”

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

#print decrypt(secret)

#puts encrypt(“abc”)
#puts encrypt(“zed”)
#puts decrypt(“bcd”)
#puts decrypt(“afe”)

puts decrypt(encrypt(“swordfish”))
#Decrypt switches each letter to the previous letter in the alphabet and then encrypt switches each letter to the next letter in the alphabet. Therefore, the two methods cancel each other out when used together and the return value is the same as the input.