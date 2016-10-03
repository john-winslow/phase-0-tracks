require_relative "game"

describe WordGuess do
	let(:game) { WordGuess.new("hello") }	

	it "stores input word" do
		expect(game.word).to eq "hello"
	end

	it "sets guess count as 2 more than length of input word" do
		expect(game.guess_counter).to eq 6
	end

	it "creates a string of underscores the same length as input word" do
		expect(game.current_word).to eq "____"
	end
end

