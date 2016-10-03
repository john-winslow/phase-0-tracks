require_relative 'game'

describe WordGuess do
	let(:game) { WordGuess.new("hello") }	

	it "stores input word" do
		expect(game.word).to eq "hello"
	end

	it "sets guess count as 2 more than length of input word" do
		expect(game.guess_counter).to eq 7
	end

	it "creates a string of underscores the same length as input word" do
		expect(game.current_word).to eq "_____"
	end

	it "compares guess/letter input to letters in hidden word" do
		expect(game.guess("h")).to eq true
		expect(game.guess("z")).to eq false
	end

	it "updates @current_word if a letter is correctly guessed" do
		game.guess("l")
		expect(game.current_word).to eq "__ll_"
	end

	it "doesn't update @current_word if a letter is incorrectly guessed" do
		game.guess("z")
		expect(game.current_word).to eq "_____"
	end
end

# Note that these tests only work if driver code from
# game file is commented out (the gets.chomp lines in particular)
