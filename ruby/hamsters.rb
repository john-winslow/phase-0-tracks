puts "What is the name of the hamster?"
	hamster_name = gets.chomp.capitalize  #string 

puts "On a scale of 1 to 10, how loud is this particular hamster?"
	hamster_volume = gets.chomp.to_i  #integer 

puts "What color is it?"
	hamster_color = gets.chomp.downcase  #string 

puts "Good candidate for adoption? (y/n)"
	adoptability = gets.chomp  #boolean
if adoptability == "y"
	adoptability = true;
elsif adoptability == "n"
	adoptability = false;
end

puts "How old do you think it is?"
	hamster_age = gets.chomp.to_f  #float
if hamster_age == ""
	hamster_age = nil
end

puts "Thanks! #{hamster_name} is all checked in."
puts "That little ball of fur is a #{hamster_volume} on a scale of 1 to 10 in loudness."
puts "#{hamster_name} has #{hamster_color} fur."
if adoptability == true
	puts "#{hamster_name} is a good candidate for adoption!"
elsif adoptability == false
	puts "#{hamster_name} is a terrible little monster, and should not be up for adoption."
end
puts "Oh yeah, #{hamster_name} is #{hamster_age} years old, by the looks of it."