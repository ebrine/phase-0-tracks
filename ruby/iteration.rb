
def greeting
  puts "Hello, what is your name?"
  _name = "Eliza"
  yield(_name)  #you have to use yield keyword to run your block
  3.times{yield(_name)}  #you can run the block in a loop orgreeting
end

greeting {|_name| puts "My name is #{_name}!"}
# #Methods in Ruby by default can take a block
# #parameters are filled by the method calling the block, in this case, greeting
# #values default to nil, so if you don't define them they will just appear blank rather than causing an error







# ###############################################

# letters = ["a", "b", "c", "d", "e"]

# puts "original data:"
# p letters

# # when using map, the very last line of your block is what the value will change to
# # you have to use the bang operator to permanently change the array
# letters.map! do |letter|
#   #puts letter
#   letter.next
# end

# # use the map method to assign edits to a new array
# # in this case the new array is modified_letters
# modified_letters = letters.map do |letter|
#   puts letter
#   letter.next
# end

# puts modified_letters


# puts "after .map call:"
# p letters





# #################################################
# # def printer
# #   puts "This is just a test!"
# #   3.times { yield("1", "2", "3") }
# # end
# # printer { |one, two, three| puts "... testing #{one}, #{two}, #{three}" }
# # printer { |one, two, three| puts "takeoff in #{three}, #{one} off-blast"}
# state_n_capital =
# {"Washington" => "Olympia",
# "California" => "Sacramento",
# "Texas" => "Austin"}
# states = ["Washington", "California", "Texas"]
# puts "Original Array and Hash:"
# puts state_n_capital
# p states
# ## This part runs the .each method:
# state_n_capital.each do |state, capital| puts "the capital of #{state} is #{capital}" end
# states.each do |state| puts "#{state} is part of the USA" end
# puts "The Array and Hash are now:"
# puts state_n_capital
# p states
# ## Now working with .map method:
# abbreviations = {
#   "Washington" => "WA",
#   "California" => "CA",
#   "Texas" => "TX"
# }
# states.map! do |state|
#   puts "The abbreviation for #{state} is #{abbreviations[state]}"
#   abbreviations[state]
# end
# puts "Output the modified states array is now:"
# p states



############################################################
## Release 2

# a method that iterates through items, deleting any that meet a condition
#### Delete_if method

sample_array = [3, 7, 8, 15, 20]
sample_hash = {
  "apple" => "fruit",
  "spinach" => "vegetable",
  "papaya" => "fruit",
  "broccoli" => "vegetable"
}

puts "Array and Hash before the operation:"
puts sample_hash
p sample_array

sample_array.delete_if {|number| number <= 8}
sample_hash.delete_if {|fruit, type| type == "vegetable"}

puts "Array and Hash after the delete_if operation:"
puts sample_hash
p sample_array


#### Keep_if method

sample_array = [3, 7, 8, 15, 20]
sample_hash = {
  "apple" => "fruit",
  "spinach" => "vegetable",
  "papaya" => "fruit",
  "broccoli" => "vegetable"
}
puts "Array and Hash before the operation:"
puts sample_hash
p sample_array

sample_array.keep_if {|number| number >= 10}
sample_hash.keep_if{|fruit, type| type == "vegetable"}

puts "Array and Hash after the keep_if operation:"
puts sample_hash
p sample_array


#### Select Method
# the difference between this and the keep_if method is that the select method
# creates a new array, meaning you have to assign to a new variable if you want to keep it

sample_array = [3, 7, 8, 15, 20]
sample_hash = {
  "apple" => "fruit",
  "spinach" => "vegetable",
  "papaya" => "fruit",
  "broccoli" => "vegetable"
}

puts "Array and Hash before the operation:"
puts sample_hash
p sample_array

new_sample_array = sample_array.select {|number| number < 10}
new_sample_hash = sample_hash.select {|fruit, type| type == "fruit"}

puts "New Array and Hash after the select operation:"
puts new_sample_hash
p new_sample_array


#### Drop_while method
# drops elements up to but not including the first element for which the block returns nil or false
# returns an array containing the remaining elements
# (creates a new array)

sample_array = [3, 7, 8, 15, 20]
sample_hash = {
  "apple" => "fruit",
  "spinach" => "vegetable",
  "papaya" => "fruit",
  "broccoli" => "vegetable"
}

puts "Array and Hash before the drop_while operation:"
puts sample_hash
p sample_array

new_sample_array_2 = sample_array.drop_while {|number| number < 9}
new_sample_hash_2 = sample_hash.drop_while {|fruit, type| fruit != "papaya"}
# for hash data structures, the drop_while method does not work perfectly:
# instead of returning a hash, it converts the data type into an array of arrays that represent the key,value pairs

puts "New Array and Hash after the drop_while operation:"
p new_sample_hash_2
p new_sample_array_2


