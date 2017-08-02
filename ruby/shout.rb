# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!!" + " "+ "WOOHOO!!!" + " :)"
#   end

# end


# puts Shout.yell_angrily("Curses I lost")
# puts Shout.yelling_happily("I win

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!!" + " "+ "WOOHOO!!!" + " :)"
  end

end

class Child
  include Shout

end

class Teacher
  include Shout

end


#### Driver Code

new_teacher = Teacher.new
new_child = Child.new

puts new_child.yell_angrily("Give back my toy")
puts new_child.yelling_happily("I love school")
puts new_teacher.yelling_happily("I'm so proud of my class")
puts new_teacher.yell_angrily("Don't take the fish out of the fishbowl")