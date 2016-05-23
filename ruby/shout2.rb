# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#    def self.yelling_happily
#      puts "Yay! Ahahahahahha!"
#    end
#
# end

module Shout
	def yell_angrily(words)
		words.upcase + "!!!"
	end

	def yell_happily(words)
		words + "!" + ":)"
	end
end

class Fan
  include Shout
end

class Parents
  include Shout
end

sports_fan = Fan.new
p sports_fan.yell_angrily("Hey you")

parents = Parents.new
p parents.yell_happily("Be careful")
