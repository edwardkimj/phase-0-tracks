class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapppy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @new_age = @age + 1
    puts "Santa's new age is #{@new_age}."
  end

  def get_mad_at(reindeer)
    removed_reindeer = @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << removed_reindeer
    puts @reindeer_ranking
  end

  # # setter method
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  #
  # # getter method
  # def age
  #   @age
  # end
  #
  # def ethnicity
  #   @ethnicity
  # end

end

santa = Santa.new("male", "White")
santa.speak
santa.eat_milk_and_cookies("chocolate cookie")
p santa.age
p santa.ethnicity
p santa.gender = "female"
santa.celebrate_birthday
santa.get_mad_at("Rudolph")


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


100.times do
  random_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  random_santa.age = rand(140)
  p random_santa.age
  p random_santa.ethnicity
  p random_santa.gender
end
