# 5.5 Solo Challenge: Manipulating Strings with Iteration

# Release 0: Attempt a Tricky Algorithm

# Ask for real name
puts "Greetings, agent #{rand(50)}.  What is your real name?"
real_name = gets.chomp

# Define a new class (so that local variables can be output)
class Spies

# Define method
# 1: swap first and last name
	def disguise(input1)
# 	Split first and last name into separate strings
		new_lastname = input1.split.first
		new_firstname = input1.split.last

# 	Split name into array of individual characters (downcase)
		spy_characters_firstname = new_firstname.downcase.split('')
		spy_characters_lastname = new_lastname.downcase.split('')

# define vowels and consonant variables
# (note I added the index(0) value to the end of
# each array, for edge cases ("u" and "z"))

# loop through each letter for each string
		def scrambler(input2)
 			input2.map! do |letter|

# define vowels and consonant variables
# (note I added the index(0) value to the end of
# each array, for edge cases ("u" and "z"))
 			vowels = ["a", "e", "i", "o", "u", "a"]
			consonants = ["b", "c", "d", "f", "g", "h", 
			"j", "k", "l", "m","n", "p", "q", "r",
			"s", "t", "v", "w", "x", "y", "z", "b"]

# if the letter is contained in the vowels array
 			if vowels.include?(letter)

# change the letter to the next indexed item in the vowel array
 				vowels[vowels.index(letter)+1]

# if the letter is contained in the conconants array
 			elsif consonants.include?(letter)

# change the letter to the next indexed item in the consonants array 		
 				consonants[consonants.index(letter)+1]
 			end
 			end
		end

# run scrambler method on both first and last names
 	scrambler(spy_characters_firstname)
 	scrambler(spy_characters_lastname)

# combine results of two to create Spy Name!
	@spy_name = "#{spy_characters_firstname.join.capitalize} #{spy_characters_lastname.join.capitalize}"
	end
end

a = Spies.new 

# run the method
a.disguise(real_name)

# define spy_name variable from inside the Spies
spy_name = a.instance_variable_get(:@spy_name)

# output code name
puts "Your code name is #{spy_name}.  Don't forget it!"

