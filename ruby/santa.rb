class Santa

def initialize(gender, ethnicity)
  puts "Initializing Santa instance ..."
  @gender = gender
  @ethnicity = ethnicity
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
    "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0
end

def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}!"
end

def speak
  puts "Ho, ho, ho! Haaaappy holidays!" 
end


end

santa1 = Santa.new("Girl", "White")
santa1.eat_milk_and_cookies("chocolate chip cookie")
santa1.speak

santas = []

genders = ["male", "girl", "boy", "femme", "n/a"]
ethnicities = ["Chinese", "Latina", "Latino", "Pirate", 
"African"]

genders.each_index {|i|
  santas << Santa.new(genders[i], ethnicities[i])
}

p santas