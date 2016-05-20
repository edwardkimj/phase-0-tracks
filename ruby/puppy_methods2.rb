class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times { puts "woof!"}
  end

  def roll_over
    puts "**roll over**"
  end

  def dog_years(years)
    puts years / 7
  end

  def play_dead
    puts "**play dead**"
  end

end

puppy = Puppy.new
puppy.fetch("frisbee")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(49)
puppy.play_dead

class Cat

  def initialize
    puts "Initializing cat instance ..."
  end

  def meow
    puts "meow meow"
  end

  def cat_jump(num)
    puts "the cat jumps #{num} times"
  end
  
end

cat = Cat.new
cat.meow
cat.cat_jump(5)

cat_data_structure = []
i = 1
while i < 51
  cat1 = Cat.new
  cat_data_structure << cat1
  i += 1
end
p cat_data_structure

cat_data_structure.each do |cat|
  cat.meow
  cat.cat_jump(3)
end
