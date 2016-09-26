# Release 0: Implement a Simple Search

def search_array(array, integer)
# create fake_index counter, since we cannot use .index
  fake_index = 0 
# iterate through array, chicking each item
  array.each do |item|             
# return fake_index of integer if contained in array      
    if item == integer; 
    	return fake_index; 
    end     
    fake_index += 1
# return nil if integer not contained in array
    if fake_index >= array.length; 
    	return nil;
    end 
  end
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)

p search_array(arr, 24)

# Release 1: Calculate Fibonacci Numbers


def fibonacci(input)
  fib_array = [0, 1]
 # start index after edge cases
  index = 2
 # edge cases
  return [] if input == 0
  return [0] if input == 1

  until index == input
 # fibonacci equation
    new_value = fib_array[index - 1] + fib_array[index - 2]
 # push into array
    fib_array << new_value
    index += 1
  end
 # return the last value
  fib_array
 end

p fibonacci(6)

p fibonacci(100).last


# Release 2: Sort an Array


# Bubble Sort: A sorting method that compares adjacent elements
# starting at the beginning of the list, and switches them if out 
# of order. It then moves to the next adjacent pair of elements, 
# including the last element from the previous pair.
# Larger elements will "bubble" to the end of a list.  Not very efficient.


def bubble(arr)
	length = arr.length
	loop do
		switch = false
		(length - 1).times do |i|
# if first two elements are improperly ordered, switch them
	    	if arr[i] > arr[i + 1]
	    		arr[i], arr[i + 1] = arr[i+1], arr[i]
	        	switch = true
	    	end
		end
# if correctly ordered, loop through to the next set of elements
		if switch == false
	   		break
		end
	end
arr
end

arr = [55, 10, 15, 77, 22, 19, 0]
p bubble(arr)
