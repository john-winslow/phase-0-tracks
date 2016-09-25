def status_check
	puts "Initializing block..."
	yield("first", "second")
	puts "Block initialized!"
end

status_check { |x, x2| puts "#{x} try!  Hopefully we won't need a #{x2} attempt!" }