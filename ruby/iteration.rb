# Module 5.3: Iteration

# Release 0: Explore Blocks

def status_check
	puts "Initializing block..."
	yield("first", "second")
	puts "Block initialized!"
end

status_check { |x, x2| puts "#{x} try!  Hopefully we won't need a #{x2} attempt!" }

###########################

# Release 1: Use .each, .map, and .map!

# array:
genres = ["rock", "rap", "reggae", "jazz", "funk"]
new_genres = []

# print original data
puts "Original array data:"
p genres
p new_genres

# iterate through the array with .each, feeding into new array:
genres.each do |genre|
	new_genres << genre.capitalize
end

# print modified results
p "After .each call:"
p genres
p new_genres

# hash:
artists = {rock: "Mick Jagger", rap: "2pac", reggae: "Bob Marley", jazz: "Miles Davis", funk: "James Brown" }

# iterate through the hash with .each:
artists.each do |category, artist|
	puts "#{artist} is the most famous #{category} artist."
end

# print original array data:
puts ".map! modification"
puts "Original array data:"
p genres

# use .map! to capitalize all values in array
genres.map! do |genre|
	genre.upcase
end

# print modified array
puts "After .map call:"
p genres


###########################

# Release 2: Use the Documentation

# ARRAY
	# declare array
prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23]

	# print original array:
puts "Original array:"
p prime_numbers

# 1. reject (delete) all numbers less than 5
prime_numbers.reject! { |n| n < 5 }

	# print modified array:
puts "Modified array:"
p prime_numbers

# 2. Filter for data more than 20
result = prime_numbers.select do |n|
	n > 20
end

	# print filtered array:
puts "Filtered array 1:"
p result

# 3. Filter for data less than 15, and print
puts "Filtered array 2:"
p prime_numbers.find_all { |n| n < 15 }

# 4. Remove items from array until condition = false
puts "Modified array:"
p prime_numbers.drop_while { |n| n < 15 }


# HASH
	# declare hash
ranking = {1 => "first", 2 => "second", 3 => "third", 4 => "fourth", 5 => "fifth"}

	# print original data
puts "Original data:"
p ranking

# 1. Delete all hashes with values over 4
ranking.delete_if { |number, rank| number > 4 }

	# print modified data
puts "Modified data:"
p ranking

# 2. Filter for data greater than 2, and print
puts "Filtered hash 1:"
p ranking.select { |number, rank| number > 2 }

# 3. Filter for data less than 3, and print
puts "Filtered hash 2:"
p ranking.keep_if { |number, rank| number < 3 }

# 4. Remove items from hash until condition = false
	# I cannot seem to find a solution for this?