puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "Estimate the volume level of the hamster (1-10 scale)"
hamster_volume = gets.chomp
hamster_volume = hamster_volume.to_i
puts "What color is the hamster's fur?"
 hamster_fur = gets.chomp
 puts "Is the hamster a good candidate for adoption? (y/n)"
 hamster_adoption_candidate = gets.chomp
puts "Estimate the hamster's age"
hamster_age = nil
user_input = gets.chomp
    if user_input == ""
        hamster_age = nil
    else 
        hamster_age = user_input.to_i
    end
puts "Hamster Info Recap: "
puts "Name: #{hamster_name}"
puts "Age: #{hamster_age}"
puts "Volume Level (1-10): #{hamster_volume}"
puts "Hamster Fur Color: #{hamster_fur}"
puts "Good Adoption Candidate?: #{hamster_adoption_candidate}"