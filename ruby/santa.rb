class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end


end


## DRIVER CODE for Release 0 - Release 3

# santa1 = Santa.new("Girl", "White")
# santa1.eat_milk_and_cookies("chocolate chip cookie")
# santa1.speak

# santas = []

# genders = ["male", "girl", "boy", "femme", "n/a"]
# ethnicities = ["Chinese", "Latina", "Latino", "Pirate", 
# "African"]

# genders.each_index {|i|
#   santas << Santa.new(genders[i], ethnicities[i])
# }

# #p santas

# puts santa1.get_mad_at("Vixen")
# puts santa1.celebrate_birthday
# puts santa1.gender = "fluid"
# puts santa1.age
# puts santa1.ethnicity

### Release 4
genders = ["male", "girl", "boy", "femme", "n/a"]
ethnicities = ["Chinese", "Latina", "Latino", "Pirate", 
"African"]
ages = [*0 ..140]

100.times do |n|
  santa = Santa.new(genders.sample, ethnicities.sample)
  santa.age = ages.sample
  puts "----------------"
  puts "Santa ##{n}:"
  puts "Santa's age is #{santa.age}"
  puts "Santa's gender is #{santa.gender}"
  puts "Santa's ethnicity is #{santa.ethnicity}"
end