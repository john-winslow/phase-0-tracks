# module Shout
#  def self.yell_angrily(words)
#   words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#  	words.upcase + "!!!" + " :)"
#  end

# end

# DRIVER CODE (test):

# puts Shout.yell_happily("woohooo")
# puts Shout.yell_angrily("awww skeet skeet gawd damn")


# Release 3: Standalone --> Mixin module
module Shout
	def yell_angrily(words)
		p words + "!!!" + " :("
	end

	def yell_happily(words)
		p words.upcase + "!!!" +" :)"
	end
end

class Woman
	include Shout
end

class Man
	include Shout
end

# DRIVER CODE:

woman = Woman.new
woman.yell_happily("hello world")

man = Man.new
man.yell_angrily("Where are my slippers?")

