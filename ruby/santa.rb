class Santa

	def speak
		p "Ho, ho, ho!  Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie} cookie!!"
	end

	def initialize
		p "Initializing Santa instance..."
	end

end

santa1 = Santa.new

santa1.speak
santa1.eat_milk_and_cookies("peanut butter")
