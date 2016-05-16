module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

   def self.yelling_happily
     puts "Yay! Ahahahahahha!"
   end

end

class Angry_man
  include Shout
end

class Teacher
  include Shout
end

angry_man = Angry_man.new
angry_man.yell_angrily("Hey you")
