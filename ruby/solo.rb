class Dragon
  attr_reader :name, :age
  attr_accessor :location

  def initialize(name)
    @name = name
    @age = 10
    @location = "New Zealand"
  end

  def breathe_fire
    puts "WHOOOOMPHH! *sizzle*"
    puts "#{@name} burnt all the grass into rubble!"
  end

  def fly(altitude)
    puts "#{@name} flew #{altitude} feet in the air and went soaring across the sea!"
  end

  def land(location)
    puts "#{@name} is from #{@location}, but he is flying over to #{location}."
    puts "#{location} is where he will settle down and lay nest."
  end

end

dragon = Dragon.new("Axe")
dragon.breathe_fire
dragon.fly(10000)
dragon.land("South America")
