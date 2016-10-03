class WordGuess

	attr_accessor :word, :guess_counter, :current_word

	def initialize(word)
		@word = word
		@current_word = "_" * @word.length 
		@guessed_letters = []
		@guess_counter = @word.length + 2
	end

	def guess(letter)
		if @guessed_letters.include?(letter)
			nil
		else
			@guess_counter -= 1
			@guessed_letters << letter
			if @word.include?(letter)
				update(letter)
				true
			else
				false
			end
		end
	end

	def update(letter)
		counter = 0
		@current_word_array = @current_word.split("")
		@new_word_array = []
		until counter == @word.length
			@current_word_array.each do |char|
			if letter == @word[counter]
				@new_word_array << letter
			else
				@new_word_array << char
			end
			counter += 1
		end
		@current_word = @new_word_array.join("")
	end

	def game_over
		if @current_word == @word
			puts "Congratulation!  You won the game."
		elsif @guess_counter == 0
			puts "You lost!  All you had to do was guess #{@word}!"
		end
	end

end

puts "Welcome to the WordGuess game!  Enter a word for player2 to guess:"
game1 = WordGuess.new(gets.chomp)

until game1.word == game1.current_word || game1.guess_counter == 0
	puts "Guess a letter - #{game1.guess_counter} guesses remaining."
	letter = gets.chomp
	input = game1.guess(letter)
		if input == nil
			puts "Letter already guessed.  Pick another!"
		elsif input == true
			puts "Well done - there is a #{letter} in the secret word."
			puts "#{game1.current_word}"
		elsif input == false
			puts "Fail!  There are no #{letter}'s in the secret word.  Guess again!"
		end
end
end



