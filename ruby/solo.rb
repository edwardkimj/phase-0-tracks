# class Dragon
#   attr_reader :name, :age
#   attr_accessor :location
#
#   def initialize(name)
#     @name = name
#     @age = 10
#     @location = "New Zealand"
#   end
#
#   def breathe_fire
#     puts "WHOOOOMPHH! *sizzle*"
#     puts "#{@name} burnt all the grass into rubble!"
#   end
#
#   def fly(altitude)
#     puts "#{@name} flew #{altitude} feet in the air and went soaring across the sea!"
#   end
#
#   def land(location)
#     puts "#{@name} is from #{@location}, but he is flying over to #{location}."
#     puts "#{location} is where he will settle down and lay nest."
#   end
#
# end
#
# dragon = Dragon.new("Axe")
# dragon.breathe_fire
# dragon.fly(10000)
# dragon.land("South America")
#
# loop do

class Roommate
	def initialize(name, age)
		puts "What's up, I'm home!"
		@name = name
		@age = age
		@relationship = "I found them on craigslist"
		@cleanliness
	end

	attr_reader :name, :age
	attr_accessor :relationship, :cleanliness

	def netflix
		puts "I need to finish Breaking Bad"
	end

	def clean(num)
		@cleanliness = num
	end

	def storytime(string)
		@relationship = string
	end
end

puts "How many roommates would you like to intialize?"
roommate_count = gets.chomp.to_i

# Create an empty array for an aparment that will be filled with roommates
apartment = []

roommate_count.times do
	puts "What is this roommate's name?"
	name = gets.chomp

	puts "How old is this roommate?"
	age = gets.chomp.to_i

	# Initialize a new roommate with their name and age attributes
	roommate = Roommate.new(name, age)

	puts "How clean is this person on a 1-10 scale?"
	roommate.clean(gets.chomp.to_i)

	puts "How did you find this roommate?"
	roommate.storytime(gets.chomp)

	# Add this new roommate to the apartment array
	apartment << roommate

	puts "Ok, next roommate"
end

# Print out the attributes for each roommate in the apartment array
apartment.each do |roommate|
	puts "#{roommate.name} is #{roommate.age} old"
	puts "#{roommate.name} is a #{roommate.cleanliness} on the clean scale"
	puts "#{roommate.relationship} is how I know #{roommate.name}"
end
