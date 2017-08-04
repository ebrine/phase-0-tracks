# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
    #create a hash
 # split the items by a space
 #  for each item push it as a symbol into our hash
         # set default quantity 1
 # invoke method to print a list
# output: [hash]

def create_list(string)
  list = {}
  item_array = string.split(" ")
  item_array.each do |item|
    list[item] = 1    
  end
  print_list(list)
  list
end

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps:add the item as a symbol to the hash
        #set default quantity 1
        #unless user put in a quantity, then use that quantity
        # steps: give user feedback that item has been added
# output: this creates an updated list

def add_item(list, item_name, quantity = 1)
  list[item_name] = quantity
  puts "Your #{item_name} has been added"
end

# Method to remove an item from the list
# input:String of item to remove, hash
# steps:Convert item to symbol, find and delete item from hash
# steps: give user feedback that item has been deleted
# output: updated list

def remove_item(list, item_name)
  list.delete(item_name)
  puts "Your #{item_name} has been removed"
end

# Method to update the quantity of an item
# input:string of item, new quantity, hash
# steps: change the string to a symbol update quantity
# steps: give user feedback that item has been changed
# output:updated list

def update_quantity(list, item_name, new_quantity)
  list[item_name] = new_quantity
  puts "Your #{item_name} has been updated to #{new_quantity}"
end

# Method to print a list and make it look pretty
# input:hash
# steps:Print title
#iterating over the hash and printing the keys and values
# output:pretty hash

def print_list(list)
  puts "--------------------"
  puts "Your Grocery List:"
  list.each { |item, quantity| puts "#{item} : #{quantity}" }
  puts "--------------------"
end


### Driver Code

list = create_list("apple banana oatmeal")
add_item(list, "mango")
remove_item(list, "apple")
update_quantity(list, "oatmeal", 5)
print_list(list)


### Reflections
# About pseudocode, I learned that coding can be much
# easier when you take the time to write good pseudocode
# Also, I like to input: steps: output: format for writing 
# pseudocode for methods

# I thought it was a relatively easy choice to use a hash for
# the grocery list, considering that you had to hold a quantity
# related to each food type. It did make it a little more complicated
# to initialize, but I think overall it made more sense

# A method returns whatever is last called in the method definition,
# (implicit return), or whatever follows the keyword 'return' (explicit).

# You can pass all of the standard data types into methods like
# strings, integers, booleans, and also arrays and hashes.

# You can pass info between methods by taking the output of one method
# and feeding it in as an argument to another one, like we did with 'list'
# in this challenge.

# I learned a lot about Refactoring in this challenge, and our guide John
# was great at going through the concepts with us and going through our 
# code. 