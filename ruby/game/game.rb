class WordGuess

	attr_accessor :word, :guess_number, :updated_word

	def initialize(word)
		@word = word
		@guess_number = @word.length + 1
		@guessed_letters = []
		@updated_word = @word.length * "_"
	end

	

end




# INPUTS:
# => first word
# => 



# One user enters a phrase, other user tries to guess it

# guesses are limited, relative to length of the word

# repeated guesses do not count against the user

# guessing player receives continual feedback on the current state of the word..
# "_______" -> "___c___" if word is 'unicorn' and user has guessed C

# congratulatory message if they win, taunting if they lose