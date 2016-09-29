# define class: Puppy
class Puppy
# CHARACTERISTICS
  def initialize(name, breed)  # class variables  
    @breed = breed  
    @name = name  
    cuteness_factor = 10
  end  
 # BEHAVIOR
  def chew  	# It can chew on things
    puts "Om nom nom.  Feed me shoes!"
  end  
  
  def nap 		# It can sleep real good-like
  	puts "zZzzZZzzZZZzz"
  end

  def identify  # It can tell you assigned variables
    puts "My name is #{@name} and I am a #{@breed}!"
  end
end  
  
# make an object  
p1 = Puppy.new('Fido', 'Mutt')
p2 = Puppy.new('Charlie', 'Border Collie')

p2.identify
p2.nap

p1.identify  
p1.chew  



