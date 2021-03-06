# Virus Predictor

# I worked on this challenge [by myself, with: Huen Kwok].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# pulls out data/code from another file that can be used in the code
# require includes ruby methods/classes etc that are already pre-defined
require_relative 'state_data'

class VirusPredictor

# create attributes and variables for new instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# returning the results of the predicted_results and speed_of_result method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# predicts deaths based on total population, and population density (higher density = higher death)
  def predicted_deaths
    # predicted deaths is solely based on population density
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

# takes population density of state and bases speed of spread on that
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
 # initialize VirusPredictor for each state

# DOESN"T WORK:
# STATE_DATA.key.each do |state, value|
#  new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#   new_state.virus_effects
# end

#does work
STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
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
# Reflection Section



# 1. one is symbol, using semicolons (population:), the other is a string ("Alabama")

# 2. pulls out data/code from another file that can be used in the code
#     -require includes ruby methods/classes etc that are already pre-defined

# 3. .each (key, value),

# 4. speed_of_spread and predicted_deaths required 3 input variables that were already
#    defined in initialization of the instance.

# 5. iterating through hash within a hash.  concept of instance variable scope.





