puts "How many employees will be processed?"
employees_surveyed = gets.chomp.to_i

until employees_surveyed == 0
	employees_surveyed -= 1

	puts "Name of employee number #{employees_surveyed+1}?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
	wants_garlic = gets.chomp.downcase
	if wants_garlic ==  "y"
		wants_garlic = true;
	elsif wants_garlic == "n"
		wants_garlic = false;
	end

	puts "Would you like to enroll in the company's health insurance?"
	wants_insurance = gets.chomp.downcase
	if wants_insurance == "y"
		wants_insurance = true;
	elsif wants_insurance == "n"
		wants_insurance = false;	
	end

	correct_age = ""
	if 2016 - birth_year == age
		correct_age = true;
	elsif 
		correct_age = false;
	end

	puts "What are you allergic to? (enter one at a time, type 'done' when finished)"
	loop do 
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			puts "Employee number #{employees_surveyed+1} is probably a vampire."
			break
		elsif allergies == "done"
			if name == 'Drake Cula' || name == 'Tu Fang'
				puts "Employee number #{employees_surveyed+1} is definitely a vampire.";
			elsif correct_age && (wants_garlic || wants_insurance)
				puts "Employee number #{employees_surveyed+1} is probably not a vampire.";
			elsif !correct_age && (!wants_garlic && !wants_insurance)
				puts "Employee number #{employees_surveyed+1} is almost certainly a vampire";
			elsif !correct_age && (!wants_garlic || !wants_insurance)
				puts "Employee number #{employees_surveyed+1} is probably a vampire.";
			else
				puts "Results inconclusive.";
			end
			break
		else
			puts "What else?"
		end
		
	end
end

puts "Actually, never mind!  What do these questions have to do with anything?  Let's all be friends."
