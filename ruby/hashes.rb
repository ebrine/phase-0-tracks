=begin
  Pseudocode for interior designer/client hash

1. create an empty hash called client info
2. ask questions of the client
3. if the user replies "none", skip to next question
4 if the user enters an answer, convert answer to appropriate data type
5. store key, value pair for every question answered
by adding to the hash
6. print hash back out on screen after all questions are asked
6. ask user if they want to update an answer
7. if yes, ask for which key they want to update
8. ask for new answer
9. convert key and value to appropriate data types and store in hash
10.print out final hash. exit program
=end



client_info = {}
puts "Please input the following information. If you do not wish to answer a question, simply enter \"none\"."

puts "Name:"
client_name = gets.chomp
if client_name == "none"
else
  client_info[:name] = client_name
end

puts "Address:"
client_address = gets.chomp
if client_address == "none"
else 
  client_info[:address] = client_address
end

puts "Number of children:"
client_children = gets.chomp
if client_address == "none"
else 
  client_info[:children_number] = client_children.to_i
end

puts "Do you have cats or dogs? Yes or no:"
client_has_pets = gets.chomp.downcase
exit_flag = false
until exit_flag == true
  if client_has_pets == "none"
    exit_flag = true
  elsif client_has_pets == "yes"
    client_info[:has_pets] = true
    exit_flag = true
  elsif client_has_pets == "no"
    client_info[:has_pets] = false
    exit_flag = true
  else
    puts "Do you have cats or dogs? Yes or no:"
    client_has_pets = gets.chomp.downcase
  end
end

puts "Urban, Suburban, or Rural:"
client_city_type = gets.chomp
if client_city_type == "none"
else 
  client_info[:city_type] = client_city_type
end

puts "How many bedrooms in your house?"
client_bedrooms = gets.chomp
if client_bedrooms == "none"
else 
  client_info[:bedrooms] = client_bedrooms.to_i
end

puts "Please list the rooms you would like decorated:"
client_rooms_to_design = gets.chomp
if client_rooms_to_design == "none"
else 
  client_info[:rooms_to_design] = client_rooms_to_design
end

puts "Decor theme:"
client_decor_theme = gets.chomp
if client_decor_theme == "none"
else
  client_info[:decor_theme] = client_decor_theme
end

puts "Budget:"
client_budget = gets.chomp
if client_budget == "none"
else
  client_info[:budget] = client_budget.to_i
end

puts "Here is the information you have provided so far:"
puts client_info

puts "Would you like to update any of your answers? Yes or no."
answer = gets.chomp.downcase
exit_flag_2 = false
while exit_flag_2 == false
  if answer == "no"
    puts "Here is your final data form:"
    puts client_info
    exit_flag_2 = true
    exit
  elsif answer == "yes"
    exit_flag_2 = true
    puts "Which key would you like to update?"
    key_to_update = gets.chomp.to_s
    puts "What is your new answer?"
    updated_response = gets.chomp
    if key_to_update == :budget || key_to_update == :children_number || key_to_update == :bedrooms
      client_info[key_to_update] = updated_response.to_i
    elsif key_to_update == :has_pets
      updated_response = gets.chomp.downcase
      if updated_response == "yes" || updated_response == true
        client_info[:has_pets] = true
      elsif updated_response == "no" || updated_response == false
        client_info[:has_pets] = false
      end
    else 
      client_info[key_to_update] = updated_response
    end 
    puts "Here is your final data form:"
    puts client_info
    exit  
  else
    puts "Would you like to update any of your answers? Yes or no."
    answer = gets.chomp.downcase
  end
end