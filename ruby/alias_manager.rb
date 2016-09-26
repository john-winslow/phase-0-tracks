# 5.5 Solo Challenge: Manipulating Strings with Iteration

real_name = ''
roster = []

# loop until user types 'quit'
until real_name == 'quit'

# ask for agent name input
puts "What is the real name of agent 00#{rand(10)}?  Type 'quit' when done."
real_name = gets.chomp.downcase

# break loop if user types 'quit'
if real_name == "quit"
	puts "Watch your back out there!"
else

# define a new class (so that local variables can be output)
class Spies
# swap first and last name, split characters into array
	def disguise(input1)
# 	split first and last name into separate strings
		new_lastname = input1.split.first
		new_firstname = input1.split.last

# 	split name into array of individual characters
		spy_characters_firstname = new_firstname.split('')
		spy_characters_lastname = new_lastname.split('')

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
puts "Code name: #{spy_name}.  Don't forget it!"

end
# unless user enters 'quit', add real name and disguise name
# to array
unless real_name == "quit"
roster << [real_name, spy_name]
end
end
# when exiting loop, print out true identities from roster
roster.each do |real_name, spy_name|
	 puts "#{spy_name} is really #{real_name.capitalize}."
end
