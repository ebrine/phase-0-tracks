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

  

end

puts alias_method("eliza brine")