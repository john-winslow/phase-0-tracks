class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer',
		'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
		@age = 0
	end

	def speak
		p "Ho, ho, ho!  Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie} cookie!!"
	end

# attribute changing methods:
	def celebrate_birthday
		@age += 1
	end

# move input reindeer to last place in reindeer ranking
	def get_mad_at(reindeer)
		reindeer_index = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(reindeer_index)
		@reindeer_ranking[-1] = reindeer
	end

end

# create empty array for santas
santas = []

# create array of gender & ethnicity options
genders = ["male", "female", "bigender", "undecided", "gender fluid", "N/A"]
ethnicities = ["American Chinese", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# fill santa arrays with new santa objects 
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end


p santas[0].age
santas[0].celebrate_birthday
p santas[0].age
p santas[0].eat_milk_and_cookies("Chocolate")
p santas[0]


santas[0].gender = "All of the genders"
santas[0].get_mad_at('Vixen')
puts "after"
p santas[0]

