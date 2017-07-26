# pseudocode

# create a method that takes a string of first and last name
# break the string into an array, with the first and last name as the two items
# switch position of first and last name
# join back into a string with first and last names separated by a space
# lowercase all the letters
# break the string into an array with each letter as its own item
# create a variable with consonants, and another with vowels in an array
# cycle through each of the letters
# check if it's in the consonant or vowel array
# for whichever one it is, replace with the next item in that array
# after cycling through all of the letters, join them back together in a first and last name 
# capitalize first and last name


def alias_method(spy_name)
  # first switch the first and last names
  spy_name_array = spy_name.split(' ')
  spy_name_array[0], spy_name_array[1] = spy_name_array[1], spy_name_array[0]
  switched_spy_name = spy_name_array.join(' ')

  #lowercase all letters
  switched_spy_name.downcase!
  #break string into array of individual letters
  spy_name_letters = switched_spy_name.chars
  #create arrays of consonants and vowels
  vowels = "aeiou".chars
  consonants = "bcdfghjklmnpqrstvwxyz"
  new_spy_name_letters = spy_name_letters.map do|letter|
    is_vowel = vowels.include?(letter)
    is_consonant = consonants.include?(letter)
    if letter == " "
      letter
    elsif is_vowel == true
      #puts "#{letter} is a vowel" #test code
      if letter == "u"
        #wrap around, replace with "a"
        letter = "a"
      end
      #indexes the letter in the vowel array, gets the next vowel
      new_vowel = vowels[vowels.index(letter) + 1]
      letter = new_vowel
    elsif is_consonant == true
      #puts "#{letter} is a consonant" #test code
      if letter == "z"
        #wrap around, replace with "b"
        letter = "b"
      end
      new_consonant = consonants[consonants.index(letter) + 1]
      letter = new_consonant
    end
  end
  new_spy_name = new_spy_name_letters.join
end

puts alias_method("eliza brine")
puts alias_method("stefan DABroski")
puts alias_method("Felicia Torres")