module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!!" + " "+ "WOOHOO!!!" + " :)"
  end

end


puts Shout.yell_angrily("Curses I lost")
puts Shout.yelling_happily("I win")