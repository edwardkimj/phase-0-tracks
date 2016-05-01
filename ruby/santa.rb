class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho Ho Ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @new_age = @age + 1
    puts "Santa's new age is #{@new_age}"
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
    puts @reindeer_ranking
  end

  # getter method
  # def age
  #   @age
  # end
  #
  # def ethnicity
  #   @ethnicity
  # end
  #
  # def gender
  #   @gender
  # end

  # setter_method
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end

santa = Santa.new("male", "Asian")
santa.speak
santa.eat_milk_and_cookies("chocolate cookie")
santa.celebrate_birthday
santa.get_mad_at("Vixen")
santa.gender = "female"
puts "Santa's new gender is #{santa.gender}"
