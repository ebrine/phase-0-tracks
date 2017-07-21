# Ask new employee questions
# store the answers in variables

puts "How many employees will be processed?"
  number_processed = gets.chomp.to_i
  employee_number = 1;

  while employee_number <= number_processed
    puts "What is your name?"
    employee_name = gets.chomp

    puts "How old are you?"
    employee_age = gets.chomp
    employee_age = employee_age.to_i

    puts "What year were you born?"
    employee_birthyear = gets.chomp
    employee_birthyear = employee_birthyear.to_i
    
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    employee_garlicbread = gets.chomp
    employee_garlicbread = employee_garlicbread.downcase
    # repeat until a yes or no answer is given
    # convert answer to true or false
    eatsgarlic = nil
    until eatsgarlic == true || eatsgarlic == false
      if employee_garlicbread == "yes" || employee_garlicbread == "y"
        eatsgarlic = true
      elsif employee_garlicbread == "no" || employee_garlicbread =="n"
        eatsgarlic = false
      else
        puts "Our company cafeteria serves garlic bread. Should we order some for you, yes or no?"
        employee_garlicbread = gets.chomp
        employee_garlicbread = employee_garlicbread.downcase
      end
    end

    puts "Would you like to enroll in the company's health insurance?"
    employee_insurance = gets.chomp
    employee_insurance = employee_insurance.downcase
    # repeat until a yes or no answer is given
    # convert answer to true or false
    wantsinsurance = nil
    until wantsinsurance == true || wantsinsurance == false
      if employee_insurance == "yes" || employee_insurance == "y"
        wantsinsurance = true
      elsif employee_insurance == "no" || employee_insurance=="n"
        wantsinsurance = false
      else
        puts "Would you like to enroll in the company's health insurance, yes or no?"
        employee_insurance = gets.chomp
        employee_insurance = employee_insurance.downcase
      end
    end
    

    # adding allergy intake loop
    allergy = nil
    
      while allergy != "done" && allergy != "sunshine"
        puts "Please list any allergies. Type 'done' when finished."
        allergy = gets.chomp.downcase
        if allergy == "sunshine"
          is_vampire = "Probably a vampire."
          sunshine_allergy = true;
         # puts "sunshine allergy" # used for testing
        end
      end

    ## Logic Section
    # do these logical tests unless they said sunshine in allergies
    unless sunshine_allergy == true
      is_vampire == "Results Inconclusive"
      # Check whether employee got age correct
      # actual age is 2017 minus birthyear
      calculated_age = 2017-employee_birthyear

      # creates age_correct variable which stores whether the age math works out
      if (employee_age == calculated_age || employee_age == calculated_age-1 )
        age_correct = true
      elsif employee_age > 100
        age_correct = false
      else
        age_correct = false
      end

      # FIRST CONDITION
      if age_correct == true && (eatsgarlic == true || wantsinsurance == true)
        is_vampire = "Probably not a vampire."
      end

      # SECOND CONDITION
      if age_correct == false && (eatsgarlic == false || wantsinsurance == false)
        is_vampire = "Probably a vampire."
      end

      # THIRD CONDITION
      if age_correct == false && eatsgarlic == false && wantsinsurance == false
        is_vampire = "Almost certainly a vampire."
      end

      if employee_name == "Drake Cula" || employee_name == "Tu Fang"
        is_vampire = "Definitely a vampire."
        puts "Vampire Name Trigger"
      end

    end
    puts is_vampire
    if employee_number < number_processed
      puts "Next Employee"
    end
    employee_number += 1
  end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
exit