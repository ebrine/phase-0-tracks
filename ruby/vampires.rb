# Ask new employee questions
# store the answers in variables

puts "What is your name?"
vampire_name = gets.chomp

puts "How old are you?"
vampire_age = gets.chomp
vampire_age = vampire_age.to_i

puts "What year were you born?"
vampire_birthyear = gets.chomp
vampire_birthyear = vampire_birthyear.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
vampire_garlicbread = gets.chomp
vampire_garlicbread = vampire_garlicbread.downcase

puts "Would you like to enroll in the company's health insurance?"
vampire_insurance = gets.chomp
vampire_insurance = vampire_insurance.downcase
