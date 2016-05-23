class Nba
  attr_reader :player, :ethnicity
  attr_accessor :age

  def initialize(player, ethnicity, age)
    @player = player
    @ethnicity = ethnicity
    @age = age
  end

  def dribble
    puts "Ball **dribble dribble dribble**"
  end

  def shooting_point(num)
    if num == 2
      puts "go for the field goal shot!"
    elsif num == 3
      puts "go for the 3 point shot!"
    else
      puts "I don't know what that was."
    end
  end

  def veteran
    if @age >= 35
      puts "#{@player} is a true veteran."
    else
      puts "#{@player} is not a true veteran yet."
    end
  end

end

nba = Nba.new("Kobe", "Black", 35)
nba.dribble
nba.shooting_point(2)
nba.veteran

nba_players = []

puts "How many Nba players would you like to see?"
nba_count = gets.chomp.to_i

nba_count.times do
  puts "Who is your favorite Nba player?"
  player = gets.chomp

  puts "How old is #{player}?"
  age = gets.chomp

  puts "What is his ethnicity?"
  ethnicity = gets.chomp

  nba = Nba.new(player, ethnicity, age)

  puts "Does he like to shoot the 2 or the 3?"
  nba.shooting_point(gets.chomp.to_i)

  nba_players << nba
end

nba_players.each do |players|
  puts "#{nba.player} is #{nba.player} years old."
  puts "#{nba.player} likes to #{nba.shooting_point}"
end
#hello
