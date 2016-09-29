class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark_length)
  	bark_length.times do
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(age)
  	age = age*7
  end

  def beg
  	puts "*stares at you, longingly*"
  end

  def initialize    #runs when a new instance of class "Puppy" is created
  	puts "Initializing new puppy instance..."
  end

end

fido = Puppy.new

fido.fetch('ball')
fido.speak(3)
fido.roll_over
p fido.dog_years(7)
fido.beg

kali = Puppy.new

kali.fetch('frisbee')

###########################
# Release 2: Write your own class

class Clown

	def balloon
		puts "How about a balloon hat?"
	end

	def face_paint
		puts "How about a heart on your cheek?"
	end

	def murder
		puts "How about I chase you around with an axe?"
	end

end

# create 50 instances and put them in array "clown_stable"
clown_stable = 50.times.collect { |i| Clown.new }

# call various instances by using their index
clown_stable[0].balloon
clown_stable[49].face_paint

clown_stable.each { |i| i.balloon }

# RUN!!
clown_stable.each { |i| i.murder }















