# Ask user for information contained in hash

puts "Name of client?"
name = gets.chomp

puts "How old is the client?"
age = gets.chomp.to_i

puts "How many children does the client have?"
children = gets.chomp.to_i

puts "Do they like leather themed rooms (y/n)?"
preference = gets.chomp.downcase
# Change answer into boolean (true/false)
if preference == "y"
	leather = true
elsif preference == "n"
	leather = false
else
	leather = nil
end

# Create hash based off of user responses
info = {
	name: "#{name}",
	age: age,
	children: children,
	leather: leather,
}

# Print the hash 
p info

#Ask user if they would like to change any keys
puts "Which input would you like to change?"
change = gets.chomp

# If answer is none, print hash one more time
if change == "none"
	p "Thank you"
# Otherwise, ask for the value of the key they wish to change
else
	puts "Enter value for #{change}:"
	new_value = gets.chomp
# Use response for "change" question to name key 
# (existing key will be modified, or new key will be created),
# and update value from user input
	info[change.intern] = new_value
end

# Print new hash 
p info



# ISSUES:
# => Input for "new_value" is a string, when we do not know if the
# user means to enter a string, boolean, or integer.