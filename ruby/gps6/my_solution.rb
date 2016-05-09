# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative links the files together to access the information between
# each other. Require is something that you need name the whole file for.
require_relative 'state_data'

class VirusPredictor
  # Initializing our virus predictor class and giving instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Running the next methods and printing their results


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private
  # This is doing our calculations for predicted deaths and printing the results
  def predicted_deaths
    # predicted deaths is solely based on population density

#incrementally increase pop density by 50, the multiplier by .1

number_of_deaths = 0
while number_of_deaths <= 200
  if @population_density
  number_of_deaths += 50
end

@population_density.each do |density,multiplier|
  number_of_deaths = (@population * multiplier += .5)

   if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Calculating the speed of which the virus will spread based on the population
  # density and speed
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

# iterate through each state in the state_data and run the viruspredictor for each state
# print string of results for each state
STATE_DATA.each do |state,pop_data|
 
# Testing the parts of our each loop
# p state
# p STATE_DATA[state][:population_density]
one_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
one_state.virus_effects
end


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Sectio
